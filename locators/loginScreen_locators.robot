*** Variables ***
${txtbox_Account}           //android.widget.EditText[contains(@text,'Điền tên đăng nhập')]
${txtbox_Password}          //android.widget.EditText[contains(@text,'Nhập mật khẩu')]
${btn_Login}                //android.widget.Button[@content-desc="Đăng nhập"]
${ckbox_Save}               //android.widget.CheckBox
${btn_ForgetPassword}       //android.widget.Button[@content-desc="Quên mật khẩu"]
${txt_Error}                //android.view.View[@content-desc="Bạn cần hoàn thiện trường thông tin này"]
${icon_Search}              //android.view.View[@content-desc="Mật khẩu"]/following-sibling::android.widget.EditText/android.widget.Button
