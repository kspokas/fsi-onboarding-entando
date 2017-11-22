<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<wp:resourceURL />administration/js/jquery-2.2.4.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jquery-ui-1.10.1.custom.min.js"></script>
<script src="<wp:resourceURL />administration/js/inline-editing/jqueryui-editable.min.js"></script>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jquery-ui-1.10.1.custom.css" media="screen"/>
<link rel="stylesheet" href="<wp:resourceURL />administration/css/jqueryui-editable.css" media="screen"/>
<script src="<wp:resourceURL />static/js/pdf.js"></script>
<script src="<wp:resourceURL />static/js/pdf.worker.js"></script>

<!-----------inclusione x-editable inline------------------------>
<wp:ifauthorized permission="superuser">
    <script>
        $(function () {
            setTimeout(function () {
                //toggle `popup` / `inline` mode
                $.fn.editable.defaults.mode = 'inline';
                $('.editLabel').editable({
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/i18nlabel',
                    send: 'always',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "i18nLabel": {
                                "key": params.name,
                                "labels": [
                                    {
                                        "langCode": "<wp:info key="currentLang" />",
                                        "value": params.value
                                    }
                                ]
                            }
                        });
                    }
                });
                //make status editable
                $('.editLabelText').editable({
                    type: 'textarea',
                    rows: 10,
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/i18nlabel',
                    send: 'always',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "i18nLabel": {
                                "key": params.name,
                                "labels": [
                                    {
                                        "langCode": "<wp:info key="currentLang" />",
                                        "value": params.value
                                    }
                                ]
                            }
                        });
                    }
                });
                $('.editContent').editable({
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/content',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    pk: function () {
                        return $(this).data("content-id");
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "contentAttribute": {
                                "contentId": params.pk,
                                "attributeName": $(this).data("attr-id"),
                                "langCode": "en",
                                "value": params.value
                            }
                        });
                    }
                });
                //make status editable
                $('.editContentText').editable({
                    type: 'textarea',
                    rows: 10,
                    cols: 50,
                    url: '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/en/inline/content',
                    ajaxOptions: {
                        dataType: 'json', //assuming json response
                        type: 'put',
                        contentType: 'application/json'
                    },
                    pk: function () {
                        return $(this).data("content-id");
                    },
                    params: function (params) {
                        return JSON.stringify({
                            "contentAttribute": {
                                "contentId": params.pk,
                                "attributeName": $(this).data("attr-id"),
                                "langCode": "en",
                                "value": params.value
                            }
                        });
                    }
                });
            }, 500);
        });
    </script>
</wp:ifauthorized>

<!-----------END inclusione x-editable inline------------------------>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });


//        charts data
        c3.generate({
            bindto: '#torta',
            data: {
                columns: [
                    ['Signedup-Application in Progress', 30],
                    ['Signups-Application non completed', 120],
                    ['Abandoned', 60]
                ],
                colors: {
                    data1: '#3498DB',
                    data2: '#CCCCCC',
                    Abandoned: '#ED796D'
                },
                type: 'pie'
            }
        });

    });
</script>

<!-- FORM HANDLER -->

<script>

    $(function () {


        /**
        * Update status on localStorage, for a given process
        */
        function updateProcessStatus(processId, currentStepIndex) {
          if (window.localStorage) {
            var curStatus = localStorage.fsiApplicationStatus ?
              JSON.parse(localStorage.fsiApplicationStatus) :
              {};
            curStatus[processId] = currentStepIndex;
            localStorage.fsiApplicationStatus = JSON.stringify(curStatus);
          }
        }

        /**
        * Gets an object at a given path, or undefined if it does not exist
        * Usage:  getDeep(object, 'propertyA.propertyB')
        *         returns object.propertyA.propertyB or undefined
        */
        function getDeep(obj, path) {
          var arr = path.split('.'),
            pointer = obj,
            i = 0;
          while (i<arr.length && pointer) {
            pointer = pointer[arr[i++]];
          }
          return pointer;
        }




        function getBase64(file) {

            var def = $.Deferred();

            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function () {
                def.resolve(reader.result);

            };
            reader.onerror = function (error) {
                def.reject(error);
            };

            return def.promise();
        }


        function buildForm(formElement) {
            var inputFields = formElement.find('input[type="text"],input[type="email"],input[type="number"],select');
            var json = {};
            inputFields.each(function (i, input) {
                var key = input.getAttribute('name');
                json[key] = input.value;
            });
            return json;
        }



        function getFirstTaskId() {
            var url = '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/userTask.json?user=' + "${currentUser.username}";
            return $.get(url).then(function (taskData) {
              var taskList = getDeep(taskData, 'response.result.taskList.list');
              return Array.isArray(taskList) ? taskList : [taskList];
            });
        }


        function gotoNextStep() {

          var steps = $('.customer-process-step'),
            currentStep = steps.filter('.active'),
            currentStepIndex = steps.index(currentStep),
            nextStep = steps.eq(currentStepIndex+1),
            nextStepSubmitBtn = nextStep.find('.customer-process-next');

          if (currentStepIndex < steps.length - 1) {
              currentStep.removeClass('active');
              nextStep.addClass('active');
              $('.bullet-progress-item').eq(currentStepIndex+1).addClass('active');


              getFirstTaskId().done(function (taskList) {
                $('.customer-process-step.active').find('.customer-process-next')
                  .removeAttr('disabled')
                  .click(function() {
                    sendFormData(taskList)
                      .then(function() {
                        gotoNextStep();
                      });
                  });
              });
          }
        }


        /**
        * Functions to handle the form submit
        */
        function sendBusinessDetailsStepData(taskList) {
          var task = taskList.find(function(obj) {
            return obj.name = 'Additional Client Details';
          });
          if (!task) {
            console.error('Task with name "Additional Client Details" not found');
            return;
          }

          var json = buildForm($('.customer-process-step.active'));
          json.taskId = task.id;
          json.containerId = task.containerId;
          json.status = 'Completed';

          var url = '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/setTaskState';
          return $.ajax(url, {
              data: JSON.stringify({taskState: json}),
              method: 'PUT',
              contentType: 'application/json',
              error: function (data, status, error) {
                  console.error(error);
              }
          });
        }

        /**
        * Functions to handle the files submission
        */
        function sendDeclarationStepData(taskList) {

          var promises = [];

          $('.customer-process-step.active').find('input[type="file"]').each(function (index, element) {
              var file = element.files[0];
              if (file) {
                  var task = taskList.filter(function(el){
                      return el.desc === element.getAttribute('data-process-file');
                  });

                  if (task.length === 0) return;


                  var promise = getBase64(file).then(function (result) {
                        var body = {
                            containerId: task[0].containerId,
                            taskId: task[0].id,
                            user: "${currentUser.username}",
                            indentifier: "",
                            name: file.name,
                            link: "",
                            size: file.size,
                            lastModified: file.lastModified,
                            content: result
                        };

                        var url = '<wp:info key="systemParam" paramName="applicationBaseURL" />api/rs/<wp:info key="currentLang"/>/jpkiebpm/putTaskDoc';
                        return $.ajax(url, {
                            data: JSON.stringify({taskDoc: body}),
                            method: 'PUT',
                            contentType: 'application/json',
                            error: function (data, status, error) {
                                console.error(error);
                            }

                        });

                    });
                  promises.push(promise);
              }
          });
          return $.when.apply(this, promises);
        }


        function sendFormData(taskList) {
          var currentStepId = $('.customer-process-step.active').attr('data-step-id');

          switch (currentStepId) {
            case 'businessDetails':
              return sendBusinessDetailsStepData(taskList);

            case 'declaration':
              return sendDeclarationStepData(taskList);

            default:
              var def = $.Deferred();
              def.resolve();
              return def.promise();
          }

        }


        // set the first step as the active step
        gotoNextStep();


    });


</script>
