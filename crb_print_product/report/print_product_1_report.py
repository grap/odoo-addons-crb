# -*- coding: utf-8 -*-
from report import report_sxw


class report_webkit_html(report_sxw.rml_parse):
    def __init__(self, cr, uid, name, context):
        super(report_webkit_html, self).__init__(
            cr, uid, name, context=context)

report_sxw.report_sxw(
    'report.print.product.report',
    'print.product.wizard',
    'addons/crb_print_product/report/print_product_report.mako',
    parser=report_webkit_html)
