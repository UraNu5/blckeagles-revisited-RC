for "_i" from 1 to (count blck_temporaryMarkers) do 
{
	if (_i > (count blck_temporaryMarkers)) exitWith {};
	private _m = blck_temporaryMarkers deleteAt 0;
	_m params["_marker","_deleteAt"];
	//diag_log format["_cleanupTemporaryMarkers: _marker = %1 | _deleteAt = %2",_marker, _deleteAt];
	if (diag_tickTime > _deleteAt) then 
	{
		deleteMarker _marker;
	} else {
		blck_temporaryMarkers pushBack _m;
		//diag_log format["_cleanupTemporaryMarkers: wait longer before deleting _marker = %1 | _deleteAt = %2",_marker, _deleteAt];	
	};
};