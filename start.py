import sys
from PyQt5 import QtCore, QtWidgets
from PyQt5.QtWidgets import QWidget
from smu_jwxt import Ui_Form

class Ui_MainWindow(QWidget, Ui_Form):
    def __init__(self):
        super().__init__()
        self.setupUi(self)

        # 设置无边框
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint)
        # 设置主背景透明
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground)


if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    first = Ui_MainWindow()
    first.show()
    sys.exit(app.exec_())