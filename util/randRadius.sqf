_radius = _this select 0;

_x = (random (_radius *2)) - _radius;
_y = sqrt((_radius ^ 2) - (_x ^ 2));
_y = (random (_y *2)) - _y;

[_x, _y]