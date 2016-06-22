$(function() {
  window.Indicium = (function() {
    var errorMessages = {
      selectorError: function(selector) {
        throw new TypeError(
          'DOM element could not be found with selector: ' + selector + '. ' +
          'The syntax for Indicium is for example: `new Indicium("body")`'
        );
      }
    }

    let defaultOptions = {
      type: 'graph',
      width: 1500,
      height: 300,
    };

    var margin = {
      left: 70
    };

    function validateSelector(selector) {
      var node = document.querySelector(selector);

      if (!node) {
        errorMessages.selectorError(selector);
      }

      return selector;
    }

    // Functions to make the D3 code more readable
      // Increasing height to type
      function increasingHeight(d) {
        var sizeIncreaser = 5 // Increase amount of D
        return d.value * sizeIncreaser
      }

      // Adding spacing to X axis 'inside' the type
      function biggerXSpacingBetween(d, i) {
        var xSpacingBetween = 50; // changes the size of the X between type
        return i * xSpacingBetween
      }

      // Adding spacing to X axis between the type
      function biggerXSpacing(d, i) {
        var sizeAmplifier = 50; // changes the size of the X
        return i * sizeAmplifier
      }

      // Adding margin to text from the type
      function textMarginToType(i) {
        var textToTop = 10 // Adding margin to the type
        return height + textToTop
      }

      function Indicium(selector) {
        this.selector = validateSelector(selector);
        this.options = defaultOptions;
      }

    Indicium.fetchData = function fetchData(url, callback) {
      return d3.json(url, callback);
    }

    // blueprint
    Indicium.prototype.draw = function draw(data, userOptions) {
      // Object.assign({}, defaultOptions, options) === ES6, experimental stuff
      var options = this.options = $.extend({}, this.options, userOptions);


      var canvas = d3.select(this.selector).append("svg")
                     .attr("width", options.width)
                     .attr("height", options.height + margin.left);

      var g = canvas.append('g')
      var type = g.selectAll("rect.bar")
            .data(data);

      type.enter()
        .append("rect")
        .attr("fill", "#26b4cd")
        .classed("bar", true);

      type
        .attr("x", biggerXSpacingBetween)
        .attr("width", 35)
        .attr("y", function(d) {
          return options.height - (d.value * 5);
        })
        .attr("height", increasingHeight)

      // Adding text to X axis
      var text = g.selectAll("text").data(data)
      text.enter().append("text")
          .text(function(d) { return d.time })
          .attr("x", biggerXSpacing)
          .attr("y", function() {
            var textToTop = 10 // Adding margin to the type
            return options.height + textToTop
          })
          .style("font-size", 9)

      return this;
    };

    return Indicium;
  })();

  // Creating a new instance of Indicium
  var indicium_steps = new Indicium('#steps-slide');
  var data = Indicium.fetchData("/steps.json", function(data) {
    indicium_steps.draw(data);
  });

  var indicium_heartrate = new Indicium('#heartrate-slide');
  var data = Indicium.fetchData("/heartrate.json", function(data) {
    indicium_heartrate.draw(data);
  });

});
