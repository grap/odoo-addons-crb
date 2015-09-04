# -*- encoding: utf-8 -*-
##############################################################################
#
#    Croc Bauge - Change Print module for Odoo
#    Copyright (C) 2015-Today GRAP (http://www.grap.coop)
#    @author Sylvain LE GAL (https://twitter.com/legalsylvain)
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

{
    'name': 'CRB - Change Print',
    'version': '1.0',
    'category': 'CRB - Custom',
    'description': """
Change default reporting
========================
(Copy from GRAP - Change print)
    * pos.order:
        * Possibility to print receipt for draft pos.order;
        * Improve of pos.receipt;
            * Reduce the size of white space;
            * Add logo of the company;

Copyright, Author and Licence :
-------------------------------
    * Copyright : 2014-Today, Groupement Régional Alimentaire de Proximité;
    * Author :
        * Julien WESTE;
        * Sylvain LE GAL (https://twitter.com/legalsylvain);
    * Licence : AGPL-3 (http://www.gnu.org/licenses/)
    """,
    'author': 'GRAP',
    'website': 'http://www.grap.coop',
    'license': 'AGPL-3',
    'depends': [
        'point_of_sale',
        'report_webkit',
        'base_headers_webkit',
        'l10n_fr',
    ],
    'data': [
        'view/action.xml',
        'view/view.xml',
        'data/ir_header_webkit.xml',
        'data/ir_property.xml',
    ],
}
