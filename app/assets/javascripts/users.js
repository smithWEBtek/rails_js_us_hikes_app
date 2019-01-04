$(document).ready(function () {
	console.log("users.js loaded!")
	attachEventListeners()
});

function attachEventListeners() {
	// listen for clicks
	// find a link or a button, with an ID or class to identify
	getHikes()
}

function getHikes() {
	$.ajax({
		url: 'http://localhost:3000/users/1.json',
		dataType: 'json',
		method: 'get'
	}).done(function (data) {

		console.log("data: ", data);
		debugger;
		//  json data won't go on the DOM in its raw form

	})
}


//hikes#index

//users/:id/hikes

// button to click 'show my hikes', only if @user
//if not logged in, automatically display all hikes

//or should I put this button on users#show and leave hikes#index page as is?
//not sure if this still satisfies 'list of things'/index requirement

//hikes#show
//add 'next' button to view
//add logic to controller #show


//Comments
//should I put this in it's own JS file?
class Comment {
	//do I have access to commentor here?
	constructor(commentor, content, id) {
		this.commentor = commentor;
		this.content = content;
		this.id = id;
	}
}

Comment.prototype.someFunction = function () {
	//do something
}

Comment.prototype.formatHTML = function () {
	//display formatted comment with commentor username
}