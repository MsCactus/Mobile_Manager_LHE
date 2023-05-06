*** Variables ***
# Orders screen
${bnt_CreateOrder}      //android.widget.Button[@content-desc="Tạo đơn hàng"]
${allOrders}            //android.view.View[@content-desc="Tất cả"]
${waitingOrders}        //android.view.View[@content-desc="Chờ xử lý"]
${processingOrders}     //android.view.View[@content-desc="Đang xử lý"]
${successfulOrders}     //android.view.View[@content-desc="Thành công"]
${failedOrders}         //android.view.View[@content-desc="Thất bại"]
${btn_ViewDetails}      //android.widget.Button[@content-desc="Xem chi tiết"]

# Detail orders screen
${ddbox_Warehouse}      //android.widget.Button[@content-desc="Chọn kho"]
${btn_AddProducts}      //android.widget.Button[@content-desc="Thêm sản phẩm"]
${txtbox_Quantities}    //android.widget.EditText
${btn_DenyOrder}        //android.widget.Button[@content-desc="Từ chối"]
${btn_SubmitOrder}      //android.widget.Button[@content-desc="Phê duyệt"]
${txtbox_ReasonDeny}    //android.widget.EditText[contains(@text,'Vui lòng nhập lý do từ chối')]
${btn_CancelDeny}       //android.widget.Button[@content-desc="Huỷ"]
${btn_SubmitDeny}       //android.widget.Button[@content-desc="Xác nhận"]
