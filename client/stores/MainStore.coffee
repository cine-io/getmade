update = (name, description)->
  _data.name = name if name
  _data.description = description if description

AppDispatcher = require("../dispatcher/AppDispatcher")
EventEmitter = require("events").EventEmitter
TodoConstants = require("../constants/MainConstants")
assign = require("object-assign")
CHANGE_EVENT = "change"
_data = { name: "getmade.io", description: "design and development for iOS, Android, Node.js, and Ruby" }


MainStore = assign({}, EventEmitter::,

  get: ->
    _data

  emitChange: ->
    @emit CHANGE_EVENT

  addChangeListener: (callback) ->
    @on CHANGE_EVENT, callback

  removeChangeListener: (callback) ->
    @removeListener CHANGE_EVENT, callback
    return
)

# Register to handle all updates
AppDispatcher.register (payload) ->
  action = payload.action
  text = undefined
  switch action.actionType
    when MainConstants.MAIN_UPDATE
      name = action.name.trim() if action.name
      description = action.description.trim() if action.description
      update name, description
    else
      return true

  # This often goes in each case that should trigger a UI change. This store
  # needs to trigger a UI change after every view action, so we can make the
  # code less repetitive by putting it here.  We need the default case,
  # however, to make sure this only gets called after one of the cases above.
  MainStore.emitChange()
  true # No errors.  Needed by promise in Dispatcher.

module.exports = MainStore
