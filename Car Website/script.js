/* 

script.js
Jims Car Sales website
Author: Conor Pakes
Student Number: C3361871
Date Created: 1/11/21

*/


function validate() {


    // check first name isnt blank

    var firstname = document.getElementById('firstname');
    if (!firstname.value) {
        alert('Please enter first name.');
        firstname.focus();
        return false;
    }

    // check last name isnt blank

    var lastname = document.getElementById('lastname');
    if (!lastname.value) {
        alert('Please enter last name.');
        lastname.focus();
        return false;
    }

    // check email w/ the RFC 5322 compliant regex (not mine - http://emailregex.com/)

    var email = document.getElementById('email').value;
    var pattern = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/;
    if (!pattern.test(email)) {
        alert('Please enter a valid email address.');
        return false;
    }

    // checks the phone input is a number

    var phone = document.getElementById('phone').value;
    var phonePattern = /^[0-9]+$/;
    if (!phonePattern.test(phone)) {
        alert('Please enter a phone number.');
        return false;
    }

    // checks previously sold is 0 or more 

    var previous = document.getElementById('previous').value;
    if (previous < 0) {
        alert('Please enter a positive number.');
        return false;
    }

    // check box for last 5 years is checked

    var binary = document.getElementsByName('binary');

    if (!(binary[0].checked || binary[1].checked)) {
        alert("Please Select Yes/No.");
        return false;
    }

    // check model isnt blank

    var model = document.getElementById('model');
    if (!model.value) {
        alert('Please enter your cars model name.');
        model.focus();
        return false;
    }

    // select a car type 

    var type = document.getElementById("type");
    if (type.value == "") {
        alert("Please select a car type.");
        return false;
    }

    // check description isnt blank

    var description = document.getElementById('description');
    if (!description.value) {
        alert('Please enter a description of your car.');
        description.focus();
        return false;
    }

    // check extras button is checked

    var extras = document.getElementsByName('extras');

    if (!(extras[0].checked || extras[1].checked)) {
        alert("Please Select whether your car includes extras or not.");
        return false;
    }

    // check coupons button is checked

    var coupons = document.getElementsByName('coupons');

    if (!(coupons[0].checked || coupons[1].checked)) {
        alert("Please select if you are happy to accept Jims Coupons to be used on your vehicle.");
        return false;
    }

    // check transmission button is checked

    var transmission = document.getElementsByName('transmission');

    if (!(transmission[0].checked || transmission[1].checked)) {
        alert("Please select your cars transmission type.");
        return false;
    }

    // check fueltype is selected

    var fueltype = document.getElementById("fueltype");
    if (fueltype.value == "") {
        alert("Please select your cars Fuel type.");
        return false;
    }

    // check drivetype is selected

    var drivetype = document.getElementById("drivetype");
    if (drivetype.value == "") {
        alert("Please select your cars drive type.");
        return false;
    }


    return true;
}