class @TaskManager

  @init = (input) ->
    if input is "title"
      # title = $('#task_' + input + '_selected').data(input)
      # console.log title
      mstitle = $('#' + input ).tokenfield(
         limit: 1
      )

    else if input is "status"
      msstatus = $('#' + input ).magicSuggest(
        data: '/statuses.json'
        method: 'get'
        useTabKey: true
        displayField: 'name'
        valueField: 'name'
        allowFreeEntries: false
        toggleOnClick: true
        useZebraStyle: true
        maxSelection: 1
        maxEntryLength: 15
        maxSuggestions: 5
        resultAsString: false
        noSuggestionText: 'No result matching the term {{query}}')

      statusName = $('#task_status_selected').data('name')

      unless statusName is "undefined"
        StatusObject = name: statusName
        msstatus.setValue [ StatusObject ]

      $(msstatus).on 'selectionchange', (e, m) ->
        values = JSON.stringify(@getValue())
        if values == '[]'
          StatusObject = name: ''
          msstatus.setValue [ StatusObject ]

    else if input is "employee"
      employee = $('#task_' + input + '_selected').data(input)
      msemployee = $('#' + input ).magicSuggest(
        data: '/employees.json'
        method: 'get'
        useTabKey: true
        displayField: 'email'
        valueField: 'id'
        allowFreeEntries: false
        toggleOnClick: true
        useZebraStyle: true
        maxSelection: 1
        maxEntryLength: 15
        maxSuggestions: 5
        resultAsString: false
        noSuggestionText: 'No result matching the term {{query}}')

      unless employee is "undefined"
        employeeId = $('#task_employee_selected').data('id')
        employeeEmail = $('#task_employee_selected').data('email')
        EmployeeObject =
          id: employeeId
          email: employeeEmail
        msemployee.setValue [ EmployeeObject ]

      $(msemployee).on 'selectionchange', (e, m) ->
        `var EmployeeObject`
        values = JSON.stringify(@getValue())

        if values == '[]'
          EmployeeObject =
            id: ''
            email: ''
          msemployee.setValue [ EmployeeObject ]
