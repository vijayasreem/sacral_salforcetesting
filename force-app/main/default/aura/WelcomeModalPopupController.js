// WelcomePopupController.js
({
    showPopupHelper : function(component, event, helper) {
        // Display the Modal/Popup
        component.set("v.isOpen", true);
    },

    closePopupHelper : function(component, event, helper) {
        // Hide the Modal/Popup
        component.set("v.isOpen", false);
    },

    onOutsideClick : function(component, event, helper) {
        // Hide the Modal/Popup when the user clicks outside the Modal/Popup
        if(event.target.id == "overlay") {
            component.set("v.isOpen", false);
        }
    }
})