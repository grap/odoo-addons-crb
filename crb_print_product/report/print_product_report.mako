## -*- coding: utf-8 -*-
<!DOCTYPE html SYSTEM "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="application/xhtml+xml;charset=utf-8" />
        <style type="text/css">
            body{
                padding:0px;margin:0px;border:0px;overflow:hidden;
            }
            div{
                padding:0px;margin:0px;border:0px;overflow:hidden;
            }
            .barcode_container{
                background-color:yellow;
                border:1px solid;
                position:absolute;
            }
            .product_barcode{
                position:relative;
                background-color:red;
            }

            .product_name{
                text-align:center;
                position:relative;
                background-color:blue;
            }
            
        </style>
    </head>
    <body>

    %for wizard in objects:

        <!-- For each row -->
        
        %for i in range(0, wizard.print_type_id.row_qty):
            <!-- For each column -->
            %for j in range(0, wizard.print_type_id.column_qty):
            <div class="barcode_container" style="
                    width:${str(wizard.print_type_id.label_width).replace(',', '.')}mm;
                    height:${str(wizard.print_type_id.label_height).replace(',', '.')}mm;
                    top:${str(wizard.print_type_id.page_margin_top +
                        (i * (wizard.print_type_id.inner_margin_top + wizard.print_type_id.label_height))).replace(',', '.')}mm;
                    left:${str(wizard.print_type_id.page_margin_left +
                        (j * (wizard.print_type_id.inner_margin_left + wizard.print_type_id.label_width))).replace(',', '.')}mm
                ">

                <div class="product_name" 
                    style="
                        font-size: ${str(wizard.print_type_id.product_name_font_size).replace(',', '.')}mm;
                        top: ${str(wizard.print_type_id.product_name_top).replace(',', '.')}mm;
                        left: ${str(wizard.print_type_id.product_name_left).replace(',', '.')}mm;
                        width: ${str(wizard.print_type_id.product_name_width).replace(',', '.')}mm;
                        height: ${str(wizard.print_type_id.product_name_height).replace(',', '.')}mm;
                    ">
                    ${wizard.product_id.name}
                </div>

                <img class="product_barcode" 
                    src="data:image/png;base64,${wizard.product_id.ean13_image}"
                    style="
                        top: ${str(wizard.print_type_id.barcode_top).replace(',', '.')}mm;
                        left: ${str(wizard.print_type_id.barcode_left).replace(',', '.')}mm;
                        width: ${str(wizard.print_type_id.barcode_width).replace(',', '.')}mm;
                        height: ${str(wizard.print_type_id.barcode_height).replace(',', '.')}mm;
                    "/>


            </div>
            %endfor
        %endfor

    %endfor
    </body>
</html>



