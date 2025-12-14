# -*- coding: utf-8 -*-
"""
***************************************************************************
Name                 : SettingsDialog
Description          : dialog for setting SmartLineLabeler default
                       label offset
Date                 : 18/Jun/2025
copyright            : (C) 2025 by Christoph Candido
email                : christoph.candido@gmx.at
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""

from qgis.core import QgsExpressionContextUtils, QgsProject

try:
    from qgis.PyQt.QtGui import QDialog
except ImportError:
    from qgis.PyQt.QtWidgets import QDialog

from qgis.PyQt import uic
import os


LABELUNITS = [
    "Millimeters",
    "MapUnits",
    "Pixels",
    "Points",
    "Inches",
    "MetersInMapUnits",
]


class SmartLineLabelerConfigDialog(QDialog):
    def __init__(self):
        QDialog.__init__(self)
        # Set up the user interface from Designer.
        ui_path = os.path.join(os.path.dirname(__file__), "ui_config.ui")
        uic.loadUi(ui_path, self)
        self.cbLabelUnits.addItems(LABELUNITS)

        if not QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
            "sll_label_offset"
        ):
            QgsExpressionContextUtils.setProjectVariable(
                QgsProject.instance(), "sll_label_offset", 5
            )

        if not QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
            "sll_label_ticklength"
        ):
            QgsExpressionContextUtils.setProjectVariable(
                QgsProject.instance(), "sll_label_ticklength", 5
            )

        if not QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
            "sll_label_units"
        ):
            QgsExpressionContextUtils.setProjectVariable(
                QgsProject.instance(), "sll_label_units", "Millimeters"
            )

        self.cbLabelUnits.setCurrentText(
            QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
                "sll_label_units"
            )
        )
        self.dblLabelOffset.setValue(
            float(
                QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
                    "sll_label_offset"
                )
            )
        )
        self.dblLabelTickLength.setValue(
            float(
                QgsExpressionContextUtils.projectScope(QgsProject.instance()).variable(
                    "sll_label_ticklength"
                )
            )
        )

    def accept(self):
        QgsExpressionContextUtils.setProjectVariable(
            QgsProject.instance(), "sll_label_offset", self.dblLabelOffset.value()
        )
        QgsExpressionContextUtils.setProjectVariable(
            QgsProject.instance(),
            "sll_label_ticklength",
            self.dblLabelTickLength.value(),
        )
        QgsExpressionContextUtils.setProjectVariable(
            QgsProject.instance(), "sll_label_units", self.cbLabelUnits.currentText()
        )
        super().accept()
