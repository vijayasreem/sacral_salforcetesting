// Unit Tests
describe('WelcomePopupController', function() {
    describe('showPopupHelper', function() {
        it('should set the isOpen attribute to true', function() {
            // Create a test component
            var component = {
                set: function(attribute, value) {
                    this.attribute = value;
                }
            };
            // Call the showPopupHelper method
            WelcomePopupController.showPopupHelper(component);
            // Assert that isOpen was set to true
            expect(component.attribute).toBe(true);
        });
    });

    describe('closePopupHelper', function() {
        it('should set the isOpen attribute to false', function() {
            // Create a test component
            var component = {
                set: function(attribute, value) {
                    this.attribute = value;
                }
            };
            // Call the closePopupHelper method
            WelcomePopupController.closePopupHelper(component);
            // Assert that isOpen was set to false
            expect(component.attribute).toBe(false);
        });
    });

    describe('onOutsideClick', function() {
        it('should set the isOpen attribute to false when the user clicks outside the Modal', function() {
            // Create a test component
            var component = {
                set: function(attribute, value) {
                    this.attribute = value;
                }
            };
            // Create a test event with the target id set to 'overlay'
            var event = {
                target: {
                    id: 'overlay'
                }
            };
            // Call the onOutsideClick method
            WelcomePopupController.onOutsideClick(component, event);
            // Assert that isOpen was set to false
            expect(component.attribute).toBe(false);
        });
    });
});