function [ mag ,ang] = fftData( x ,f )

fs=4000;%~²ÉÑùÆµÂÊ
    A=x(1000:1799,:);
    N=size(A,1);n=0:N-1;
    k=size(A,2);
    magAll(n+1,1)=n*fs/N;
    angAll(n+1,1)=n*fs/N;
    magAll(:,2:k+1)=abs(fft(A)*2/(N*sqrt(2)));
    angAll(:,2:k+1)=angle(fft(A));
    mag=magAll(magAll(n+1,1)==50*f,2:k+1);
    ang=angAll(angAll(n+1,1)==50*f,2:k+1);
end

