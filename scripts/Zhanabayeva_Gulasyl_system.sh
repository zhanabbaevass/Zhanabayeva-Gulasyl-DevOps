echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Gulasyl"
echo "Surname: Zhanabayeva"
echo "Group: IT2-2310"
echo "Student ID: 37225"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(data)"
echo "Operating System: $(uname -s)"
echo "Disk Usage:"
df -h / | tail -n 1
echo "Memory Usage:"
free -h | head -n 2
echo "=============================="

IF_FILE="Zhanabayeva_Gulasyl_info.txt"
if [-f "$IF_FILE ] || [-f "../$IF_FILE" ]; then
echo "Student information file exists."
else
echo "Student information file does not exists."
fi
