@echo off
REM ���ù�������·��
set WORKING_COPY=D:\PM_Mainland_Trunk_20230321_r552586

REM �л���SVN�����������ڵ�Ŀ¼
cd /d "%WORKING_COPY%"

REM ����Ƿ�ɹ��л���ָ��Ŀ¼
if errorlevel 1 (
    echo �޷��л���Ŀ¼: %WORKING_COPY%
    pause
    exit /b 1
)

REM ִ��SVN�����������Ƴ���
echo ��������������...
svn cleanup

REM ���SVN���������Ƿ�ɹ�ִ��
if errorlevel 1 (
    echo SVN ����ʧ��.
    pause
    exit /b 1
) else (
    echo SVN ����ɹ�.
)

REM ִ��SVN��������
echo ���ڸ��¹�������...
svn update

REM ���SVN���������Ƿ�ɹ�ִ��
if errorlevel 1 (
    echo SVN ����ʧ��.
) else (
    echo SVN ���³ɹ�.
)

REM ��ͣ�Ա�鿴���
pause