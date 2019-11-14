## Project16 Capital Cities

1. MapKit usage	

   + MKAnnotation

   + addAnnotation

   + add detail button

     ```
     annotationView?.rightCalloutAccessoryView = btn
     ```

     



## Project18 Debugging

1. `print()` and the extra `terminator` and `separator` parameters

   ```swift
   print(1, 2, 3, 4, 5, separator: "-")
   print(1, 2, 3, 4, 5, terminator: "")
   ```

2. `assert()`: Use assert when your want your app to crash if a specific condition isn't true, and when your build a release version of your app XCode automatically disables your assertions.

   ```Swift
   assert(1==2, "Error Message")
   ```

3. breakpoints:
   + normal breakpoints
   + exception breakpoints
   + conditional breakpoints
4. view debugging



## Project19 JavaScript Injection
1. how to create new extension and add new target?

2. nested closure weak self. 

3. NotificationCenter

   + the object should receive the notification
   + the method should be called when recived notification
   + the notification we want to receivce
   + the object that is sending the notification

   ```swift
   let notificationCenter = NotificationCenter.default
   notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
   notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillChangeFrameNotification object: nil)
   ```

4. In ObjC arrays and dictionaries couldn't contain structures like `CGRect`, so Apple had a special class called `NSValue` that acted as a wrapper around structures so they could be put into dictionaries and arrays.

   ```c
   CGRect r = CGRectMake(1,2,3,4);
   NSValue *v = [NSValue valueWithCGRect:rect];
   NSArray *a = [NSArray arrayWithObject:v];
   CGRect r2 = [[a lastObject] CGRectValue];
   ```

5. adjust for keyboard

   ```swift
   @objc func adjustForKeyboard(notification: Notification) {
   		let userInfo = notification.userInfo!
   		let keyboardScreenEndFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
   		let keyboardViewEndFrame = view.convert(keyboardScreenEndFrame, from: view.window)
   
           if notification.name == UIResponder.keyboardWillHideNotification {
   			script.contentInset = UIEdgeInsets.zero
   		} else {
   			script.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardViewEndFrame.height, right: 0)
   		}
   
   		script.scrollIndicatorInsets = script.contentInset
   
   		let selectedRange = script.selectedRange
   		script.scrollRangeToVisible(selectedRange)
   	}
   ```

6. UITextFiled

   ```swift
   // Padded textfile
   import UIKit
   
   open class PaddedTextField: UITextField {
       public var textInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) {
           didSet { setNeedsDisplay() }
       }
       
       public override init(frame: CGRect) {
           super.init(frame: frame)
       }
       
       convenience init() {
           self.init(frame: .zero)
       }
       
       public required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
       }
       
       open override func textRect(forBounds bounds: CGRect) -> CGRect {
           return UIEdgeInsetsInsetRect(bounds, textInsets)
       }
       
       open override func editingRect(forBounds bounds: CGRect) -> CGRect {
           return UIEdgeInsetsInsetRect(bounds, textInsets)
       }
       
       open override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
           return UIEdgeInsetsInsetRect(bounds, textInsets)
       }
       
       open override func drawText(in rect: CGRect) {
           super.drawText(in: UIEdgeInsetsInsetRect(rect, textInsets))
       }
   }
   ```

   