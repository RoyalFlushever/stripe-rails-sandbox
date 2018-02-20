
var elements = stripe.elements();

// Custom styling can be passed to options when creating an Element.

var style = {
	base: {
		// Add your base input styles here. For example:
		fontSize: '16px',
		color: "#32325d",
	}
};

// Create an instance of the card Element
var card = elements.create('card', {style: style});

// Add an instance of the card Element into the 'card-element'
card.mount('#card-element');