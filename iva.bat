:start
@echo reading dir

dir

@echo off
timeout 5
@echo on

@echo reding verbose
tree Desktop

@echo off
timeout 5
@echo on

@echo pinging ya.ru
ping ya.ru

@echo off
timeout 5
@echo on

@echo trace routing ya.ru
tracert ya.ru

goto start