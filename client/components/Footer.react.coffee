# @cjsx React.DOM

React = require('react')

Footer = React.createClass({
  render: ->
    return (
      <footer id="footer" className="footer">
        <div className="container">

          <div className="links">
            <div className="links-box">

              <div>
                <h4>Get in Touch</h4>
                <div>
                  <a target="_blank" href="mailto:info@getmade.io">info@getmade.io</a> <br/>
                  <a target="_blank" href="tel:+1-415-347-5653">(415) 347-5653</a> <br/>
                </div>
                <div className="address">
                  getmade.io <br/>
                  548 Market St Ste 9239 <br/>
                  San Francisco CA 94104 <br/>
                </div>
              </div>

              <div>
                <h4>Connect With Us</h4>
                <ul>
                  <li>
                    <a target="_blank" href="https://twitter.com/getmade_io">
                      <i className="fa fa-twitter"></i>
                      <span> Twitter</span>
                    </a>
                  </li>
                  <li>
                    <a target="_blank" href="https://www.facebook.com/getmade.io">
                      <i className="fa fa-facebook"></i>
                      <span> Facebook</span>
                    </a>
                  </li>
                </ul>
              </div>

              <div className="copyright">
                <div>
                  <img src="/images/getmade-icon.png" />
                </div>
                <p>
                  Copyright &copy; 2014, getmade.io. <br/>
                  All rights reserved.
                </p>
              </div>

            </div>
          </div>

        </div>
      </footer>
    )
})

module.exports = Footer
