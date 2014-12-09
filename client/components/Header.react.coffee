# @cjsx React.DOM

React = require('react')

Header = React.createClass({
  render: ->
    return (
      <nav className="navbar navbar-inverse" role="navigation">
        <div className="container-fluid">
          <div className="navbar-header">
            <a className="navbar-brand" href="#">
              <img alt="getmade.io" src="/images/getmade-logomark.png" />
            </a>
          </div>
        </div>
      </nav>
    )
})

module.exports = Header
