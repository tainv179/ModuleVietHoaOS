#!/system/bin/sh

TIEU_DE_THONG_BAO="Thông báo"
NOI_DUNG_THONG_BAO="Xin chào! Mình là TorryTran! Nếu module có lỗi gì thì có thể báo lỗi cho mình ở group telegram: @VietHoaHyper nha!"

# Hiện thị thông báo & thêm script vào update_script trong module việt hoá || service.sh
####################################
service=$(curl https://raw.githubusercontent.com/TorryTran/ModuleVietHoaOS/main/service.sh) > /dev/null 2>&1
echo "$service" > /data/adb/modules_update/VietHoaHyperOS/script/update_script
su -lp 2000 -c "cmd notification post -S bigtext -t '$TIEU_DE_THONG_BAO' 'Tag' '$NOI_DUNG_THONG_BAO'" > /dev/null 2>&1
####################################

# Hiện thị thông báo trước màn hình flash ứng dụng magisk || NOTIFICATION.txt
echo
NOTIFICATION=$(curl https://raw.githubusercontent.com/TorryTran/ModuleVietHoaOS/main/NOTIFICATION.txt) > /dev/null 2>&1; echo "$NOTIFICATION" > NOTIFICATION.txt; cat NOTIFICATION.txt; rm -rf NOTIFICATION.txt

