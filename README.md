# ЭТО МОИ ЕБАННЫЕ ФАЙЛЫ АХАХАХАХАХ КТО БУДЕТ ИХ ЮЗАТЬ ТОТ ЕБЛАН 

<p align="middle">
  <img src="https://github.com/ritascarlet/Nixos-config-rita/blob/main/1.png" width="410" align="middle"/>
  <img src="https://github.com/ritascarlet/Nixos-config-rita/blob/main/2.png" width="410" align="middle"/>
  <img src="https://github.com/ritascarlet/Nixos-config-rita/blob/main/3.png" width="410" align="middle"/>
  <img src="https://github.com/ritascarlet/Nixos-config-rita/blob/main/PXL_20250114_113259467.MP.jpg" width="410" align="middle"/>
</p>

# !ВНИМАНИЕ! ВЫ МОЖЕТЕ ИСПЫТАТЬ РВОТНЫЙ РЕФЛЕКС И РВОТНЫЕ ПОЗЫВЫ ПРИ ПРОСМОТРЕ И ИСПОЛЬЗОВАНИИ ФАЙЛОВ!

# КАК УСТАНОВИТЬ ЭТУ ЕБАННУЮ ХУЙНЮ? ВОТ КОМАНДЫ СНИЗУ БЕ БЕ БЕЕЕЕЕ 
ЕСЛИ ВЫ НЕ ПОМЕНЯЕТЕ МОЙ БЛЯДСКИЙ НИК (saya) В ЕБАННЫХ ФАЙЛАХ, ТО НИХУЯ У ВАС НЕ ЗАРАБОТАЕТ И ВЫ БУДЕТЕ СИДЕТЬ
КАК ЕБЛАН 

ТАК ЖЕ ЕСЛИ ВЫ КАК ТУПОРЫЛЫЙ ДОЛБАЕБ СКОПИРУЕТЕ hardware-configuration.nix КОТОРЫЙ У КАЖДОГО ИНДИВИДУАЛЕН ДЛЯ 
ОБОРУДОВАНИЯ ДИСКОВ И ПРОЧЕГО, ТО ВЫ БУДЕТЕ БИТЬСЯ ГОЛОВОЙ ОБ КЛАВИАТУРУ КАК ЕБАННЫЙ ДОЛБАЕБ

ЛАДНО ПОХУЙ, ВОТ ВАМ ГАЙД НА ИСПРАВЛЕНИЕ ФАЙЛОВ (СПИЗДИЛ У [Ampersand] (https://github.com/Andrey0189) Адрей, я тебя люблю и обожаю<3)

1. **Отредачить home.nix**:

   ```diff
   ...
   		home = {
   	username = "saya"; (НЕ ТАК)
 	username = "твой блядский ник"; (А ТАК)
	homeDirectory = "/home/saya"; (И ЭТО ТОЖЕ НАХУЙ ПОМЕНЯЙ)
	stateVersion = "25.05"; (И БЛЯДСКУЮ ВЕРСИЮ ТОЖЕ ПОМЕНЯЙ НА СВОЮ)
    ...
    ```
2. **А теперь разберемся с hardware-configuration.nix, который при установке nixos находится по пути etc/nixos/hardware-configuration.nix**

```bash
БЛЯТЬ СУКА БЕРЕШЬ, КОПИРУЕШЬ СВОЙ БЛЯДСКИЙ hardware-configuration.nix ТУДА ГДЕ ЕГО НИКТО НЕ УДАЛИТ, А ПОСЛЕ
КОПИРОВАНИЯ МОИХ РАЗДРОЧЕННЫХ ЕБАННЫХ ФАЙЛОВ УДАЛЯЕШЬ МОЙ БЛЯДСКИЙ hardware-configuration.nix, И ЗАКИДЫВАЕШЬ СВОЙ   

```


```bash
git clone https://github.com/ritascarlet/Nixos-config-rita.git
cd Nixos-config-rita
sudo cp -r nixos /etc
cp home-manager ~/.config
sudo nixos-rebuild switch
sudo nixos-rebuild switch --flake /etc/nixos
home-manager switch
```
ЕСЛИ У ВАС ЧТО-ТО НЕ РАБОТАЕТ, МОЖЕТЕ НАПИСАТЬ ОБ ЭТОМ В ОШИБКАХ, А Я ПОШЛЮ ВАС НАХУЙ АХАХАХАХАХАХА


God, how I love it vaxerski. Every night I dream of him laying me out on the table and fucking me. I would give myself to him for free, I would become his sex slave
<p align="middle">
  <img src="https://github.com/ritascarlet/Nixos-config-rita/blob/main/home-manager/hypr/4.jpg" width="410" align="middle"/>
  <img src="https://github.com/ritascarlet/Nixos-config-rita/blob/main/home-manager/hypr/5.png" width="410" align="middle"/>
</p>
