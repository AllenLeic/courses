VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "fcdSysUserandDept"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Attribute VB_Ext_KEY = "RVB_UniqueId" ,"3DAFBD9D01FF"
Attribute VB_Ext_KEY = "RVB_ModelStereotype" ,"Class Module"
Option Explicit


'�õ�ָ������
'����
'ID: long
'return: Recordset
'����ָ�����ŵĵ�����¼
'##ModelId=3DB45F70025F
Public Function GetDeptByID(ID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.DeptManager")
    Set GetDeptByID = objMngr.GetListByID(ID)
    Set objMngr = Nothing
    
End Function


'�õ�ָ���û�
'����
'ID: long
'return: Recordset
'����ָ���û��ĵ�����¼
'##ModelId=3DB45FFF02D3
Public Function GetUserByID(ID As Long) As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.UserManager")
    Set GetUserByID = objMngr.GetListByID(ID)
    Set objMngr = Nothing
    
End Function


'ɾ���������š�
'����
'ID: long
'���ŵı�ʶ
'##ModelId=3DB18BB0034F
Public Sub DeleteDept(ID As Long)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.DeptManager")
    objMngr.Delete ID
    Set objMngr = Nothing
    
End Sub


'ɾ�������û���
'����
'ID: long
'�û��ı�ʶ
'##ModelId=3DB18B6E0264
Public Sub DeleteUser(ID As Long)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.UserManager")
    objMngr.Delete ID
    Set objMngr = Nothing
    
End Sub


'���沿�ŵĸ�����Ϣ��
'����
'rs: Recordset
'������Ϣ��¼��
'##ModelId=3DB18C3A017B
Public Sub SaveDeptInfo(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.DeptManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub


'�����û��ĸ�����Ϣ��
'������
'rs: Recordset
'�û�����Ϣ��¼��
'##ModelId=3DAFBD9D0347
Public Sub SaveUserInfo(rs As Recordset)
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.UserManager")
    objMngr.Save rs
    Set objMngr = Nothing
    
End Sub


'�õ����ŵĿռ�¼��
'����
'return: Recordset
'���ŵĿռ�¼��
'##ModelId=3DB18CEC012E
Public Function GetDeptEmptyRec() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.DeptManager")
    Set GetDeptEmptyRec = objMngr.GetEmpty()
    Set objMngr = Nothing
    
End Function


'�õ��û��Ŀռ�¼����
'������
'return: Recordset
'�û��Ŀռ�¼��
'##ModelId=3DAFBD9D03A5
Public Function GetUserEmptyRec() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.UserManager")
    Set GetUserEmptyRec = objMngr.GetEmpty()
    Set objMngr = Nothing
    
End Function


'���ȫ�������б���
'������
'return: Recordset
'���ز��ŵ��б�
'##ModelId=3DAFBD9D02E9
Public Function GetDepartmentList() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.DeptManager")
    Set GetDepartmentList = objMngr.GetAll()
    Set objMngr = Nothing
    
End Function


'���ȫ���û���Ϣ��
'������
'return: Recordset
'ϵͳ�����ʻ��ļ�¼��
'##ModelId=3DAFBD9D02AB
Public Function GetUserList() As Recordset
    Dim objMngr As MainBusInterface.IMaintData
    Set objMngr = CreateObject("MainBusiness.UserManager")
    Set GetUserList = objMngr.GetAll()
    Set objMngr = Nothing
    
End Function


'���ȫ���û���Ϣ��
'������
'return: Recordset
'ϵͳ�����ʻ��ļ�¼��
'##ModelId=3DAFBD9D02AB
Public Function GetExgEmails() As Recordset
    Dim objMngr As MainBusiness.UserManager
    Set objMngr = CreateObject("MainBusiness.UserManager")
    Set GetUserList = objMngr.GetExgEmails()
    Set objMngr = Nothing
End Function
