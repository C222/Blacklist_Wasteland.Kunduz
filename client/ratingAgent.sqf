diag_log format ["Starting rating agent."];

while {true} do
{
	if((rating player) < 0) then
	{
		// systemChat format ["Adding %1 to rating.", (rating player)];
		player addRating -(rating player);
	};
	sleep 1;
};