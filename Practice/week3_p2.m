
t = linspace( 0, 2, 1000 ) ;
tau = 0.15 ;
y1 = zeros( 1, length(t)) ;
y1(find(abs(t - round(t))<=tau)) = 1;
f = 5 ;
y = cos( 2*pi*f*t + pi*y1 ) ;
figure(1)
subplot(211)
plot( t, y1 ) ;
grid on ;
ylim([0 1.1]) ;
subplot(212)
plot( t, y ) ;
grid on

x = linspace(0, 2, 1000);
tau = 0.15;
y2 = zeros( 1, length(x)) ;
for k=1:length(x)
    val = round(x(k));
    dist = abs( x(k) - val ) ;
    if dist<=tau
        y2(k) = 1 ;
    else
    y2(k) = 0 ;
    end
end
f = 5 ;
y = cos( 2*pi*f*t + pi*y2) ;
figure(2)
subplot(211)
plot( x, y2 ) ;
grid on ;
ylim([0 1.1]) ;
subplot(212)
plot( x, y ) ;
grid on
