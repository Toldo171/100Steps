// Remember to clean up the memory used for your surface
surface_free(surf);

/*
Note:

It may actually be necessary to copy this into a ROOM END EVENT, as well.
I don't believe this is called if a room ends prior to the object being destroyed.
*/