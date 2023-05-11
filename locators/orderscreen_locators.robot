*** Variables ***
# Orders screen
${bnt_CreateOrder}              //android.widget.Button[@content-desc="Tạo đơn hàng"]
${allOrders}                    //android.view.View[@content-desc="Tất cả"]
${waitingOrders}                //android.view.View[@content-desc="Chờ xử lý"]
${processingOrders}             //android.view.View[@content-desc="Đang xử lý"]
${successfulOrders}             //android.view.View[@content-desc="Thành công"]
${failedOrders}                 //android.view.View[@content-desc="Thất bại"]
${btn_ViewDetails}              //android.widget.Button[@content-desc="Xem chi tiết"]

# Detail orders screen
${ddbox_Warehouse}              //android.widget.Button[@content-desc="Chọn kho"]
${btn_AddProducts}              //android.widget.Button[@content-desc="Thêm sản phẩm"]
${txtbox_Quantities}            //android.widget.EditText
${btn_DenyOrder}                //android.widget.Button[@content-desc="Từ chối"]
${btn_SubmitOrder}              //android.widget.Button[@content-desc="Phê duyệt"]
${txtbox_ReasonDeny}            //android.widget.EditText[contains(@text,'Nhập lý do ')]
${btn_Cancel}                   //android.widget.Button[@content-desc="Huỷ"]
${btn_Submit}                   //android.widget.Button[@content-desc="Xác nhận"]
${btn_Back}                     //android.widget.Button[@content-desc="Quay lại"]
${btn_decreaseQuantities}       //android.widget.EditText/preceding-sibling::android.widget.Button
${txt_editQuantities}           //android.widget.EditText
${btn_increaseQuantities}       //android.widget.EditText/following-sibling::android.widget.Button
${btn_updateQuantities}         //android.widget.Button[@content-desc="Cập nhật đơn hàng"]
${btn_backToPreviousPage}       //android.widget.Button[1]
