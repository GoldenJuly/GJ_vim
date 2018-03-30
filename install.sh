#!/bin/sh

#创建文件夹.gj_vim
if [ ! -d "/root/.gj_vim" ]; then
    mkdir "/root/.gj_vim"
fi

#将本地文件拷贝到/root/.gj_vim中
cp -rf * /root/.gj_vim

#删除仓库里多余的.vimrc文件
rm -rf /root/.gj_vim/.vimrc

#将.vimrc拷贝到/root下，并备份之前的文件
if [ ! -d "/root/.vimrc_old" ]; then
    mv /root/.vimrc /root/.vimrc_old
fi
cp -rf .vimrc /root


















