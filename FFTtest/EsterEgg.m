
figure(1);%定义函数
axis([-5.1,5,-0.05,1.05]);%绘制二维图形
hold on;%保持当前图形及轴系所有的特性
axis('off');%覆盖坐标刻度，并填充背景
%通过填充绘出台阶及两边的挡板
fill([-5.1,-5,-5,-5.1],[-0.05,-0.05,1.05,1.05],[0,0.5,0]);
fill([4.12,4.22,4.22,4.12],[-0.05,-0.05,1.05,1.05],[0,0.5,0]);
fill([-5,-3.2,-3.2,-5],[-0.05,-0.05,0,0],[0,0.5,0]);
fill([-3.2,-2.8,-2.8,-3.2],[-0.05,-0.05,0.2,0.2],[0,0.5,0]);
fill([-3.2,-1.4,-1.4,-3.2],[0.2,0.2,0.25,0.25],[0,0.5,0]);
fill([-1.4,-1,-1,-1.4],[0.2,0.2,0.45,0.45],[0,0.5,0]);
fill([-1.4,0.4,0.4,-1.4],[0.45,0.45,0.5,0.5],[0,0.5,0]);
fill([0.4,0.8,0.8,0.4],[0.45,0.45,0.7,0.7],[0,0.5,0]);
fill([0.4,2.0,2.0,0.4],[0.7,0.7,0.75,0.75],[0,0.5,0]);
fill([2.0,2.3,2.3,2.0],[-0.05,-0.05,0.75,0.75],[0,0.5,0]);
fill([2.3,4.12,4.12,2.3],[-0.05,-0.05,0,0],[0,0.5,0]);
%x1=line([-5,5],[0,0],'color','g','linestyle','-', 'markersize',50)%设置台阶边框线，颜色，擦试方式
%x2=line([-5,5],[0.25,0.25],'color','g','linestyle','-', 'markersize',50)%设置台阶边框线，颜色，擦试方式
%line([-5,5],[0.5,0.5],'color','b','linestyle','-', 'markersize',50)%设置球与地面接触面的颜色，擦试方式
%line([-5,5],[0.75,0.75],'color','b','linestyle','-', 'markersize',50)%设置球与地面接触面的颜色，擦试方式
head=line(-5,1,'color','r','linestyle','.','erasemode','xor', 'markersize');%设置小球颜色，大小，线条和擦试方式
%body=line(-5,1,'color','b','linestyle','-','erasemode','none'); %描绘轨迹线
%设置初始条件
t=-5;
dt=0.001;
w=0;
dw=0.001;
while 1 %设置球跳到第一台阶的范围和高度
    while t<=-4
        t=dt+t;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=-w*w+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-1;%设置球弹起的初始位置
    %设置球跳到第二台阶的范围和高度
    while t<=-2.31
        t=dt+t;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/2+0.5;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-1;%设置球弹起的初始位置
    %设置球跳到第三台阶的范围和高度
    while t<=-0.62
        t=dt+t;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/2+0.75;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-1;%设置球弹起的初始位置
    %设置球跳到第四台阶的范围和高度
    while t<=1.1
        t=dt+t;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/2+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-1;%设置球弹起的初始位置
    %设置球跳到第五台阶的范围和高度
    while t<=2.11
        t=dt+t;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/4+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=0;%设置球弹起的初始位置
    %设置球弹起的高度
    while t<=4.12
        t=dt+t;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=0;%设置球弹起的初始位置
    %设置球弹起的高度
    while t>=2.11
        t=t-dt;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=0;%设置球弹起的初始位置
    %设置球弹起的高度
    while t>=1.11
        t=t-dt;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/4+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-0.71;%设置球弹起的初始位置
    %设置球弹起的高度
    while t>=-0.62
        t=t-dt;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/2+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-0.71;%设置球弹起的初始位置
    %设置球弹起的高度
    while t>=-2.31
        t=t-dt;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/2+0.75;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-0.71;%设置球弹起的初始位置
    %设置球弹起的高度
    while t>=-4
        t=t-dt;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)/2+0.5;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
    w=-1;%设置球弹起的初始位置
    %设置球弹起的高度
    while t>=-5
        t=t-dt;
        if w<=1
            w=dw+w;
        else
            w=-1;
        end
        y=(-w*w)+1;
        set(head,'xdata',t,'ydata',y);%设置球的运动
        %set(body,'xdata',t,'ydata',y);%描绘轨迹线
        drawnow;
    end %结束程序
end

