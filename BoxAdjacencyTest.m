clc
clf

box = Box([0 10 10 0],[0 0 10 10]);
BS1 = box.split();
BS11 = BS1{1}.split();
BS111 = BS11{3}.split();
BS1111 = BS111{3}.split();
BS11111 = BS1111{4}.split();

box.draw();
bTest = BS11111{3};
rectangle('Position',[bTest.x(1) bTest.y(1) bTest.size bTest.size],...
    'FaceColor','y');


bTestAdj = bTest.getAdjBoxes();
for b = 1:length(bTestAdj)
    adjBox = bTestAdj{b};
    x = adjBox.x(1);
    y = adjBox.y(1);
    w = adjBox.size;
    h = w;
    rectangle('Position',[x y w h],'FaceColor','b', 'EdgeColor', 'g');
end


axis equal