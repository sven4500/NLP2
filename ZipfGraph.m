filename = uigetfile('*.txt');
fd = fopen(filename, 'r');
if fd <= 0
    disp('�� ���������� ������� ����!');
    return;
end
A = fscanf(fd, '%d');
A=A./max(A);
fclose(fd);
plot(1:length(A),A)
