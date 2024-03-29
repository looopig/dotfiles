# $HOME/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.

# 加载用户目录下的 .bashrc 文件
if [[ -f ~/.bashrc ]]; then
	. ~/.bashrc
fi

# 系统环境变量
export LANGUAGE="zh_CN.UTF-8"       # 设置系统语言为中文
export RANGER_LOAD_DEFAULT_RC=FALSE # ranger 用户配置生效

# chromium 开启用户登陆同步功能
export GOOGLE_API_KEY=AIzaSyDXaZtHn8MAXcBbjGKBDiTG4bGv2eC0yvs
export GOOGLE_DEFAULT_CLIENT_ID=978136766540-cihgfunj72s0osna782hhacc3g6q4gnu.apps.googleusercontent.com
export GOOGLE_DEFAULT_CLIENT_SECRET=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

# fcitx5 全局变量
# alacritty 中 fcitx5 UI 不同是由于 alacritty 使用的就是 xim 架构
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5

# 登录用户自动 startx 进入窗口管理器
# 只有在使用 bspwm 等窗口管理器的时候才使用
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	startx
#fi
