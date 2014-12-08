AppDispatcher = require("../dispatcher/AppDispatcher")
MainConstants = require("../constants/MainConstants")

MainActions =
  update: (name, description)->
    AppDispatcher.handleViewAction
      actionType: MainConstants.MAIN_UPDATE
      name: name
      description: description

module.exports = MainActions
