@echo off
REM 设置工作副本路径
set WORKING_COPY=D:\PM_Mainland_Trunk_20230321_r552586

REM 切换到SVN工作副本所在的目录
cd /d "%WORKING_COPY%"

REM 检查是否成功切换到指定目录
if errorlevel 1 (
    echo 无法切换到目录: %WORKING_COPY%
    pause
    exit /b 1
)

REM 执行SVN清理命令以移除锁
echo 正在清理工作副本...
svn cleanup

REM 检查SVN清理命令是否成功执行
if errorlevel 1 (
    echo SVN 清理失败.
    pause
    exit /b 1
) else (
    echo SVN 清理成功.
)

REM 执行SVN更新命令
echo 正在更新工作副本...
svn update

REM 检查SVN更新命令是否成功执行
if errorlevel 1 (
    echo SVN 更新失败.
) else (
    echo SVN 更新成功.
)

REM 暂停以便查看结果
pause