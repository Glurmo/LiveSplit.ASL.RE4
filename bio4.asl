state("bio4")
{
	int IsEndOfChapter : "bio4.exe", 0x0864311;
}

start
{
}

reset
{
}

split
{
	return old.IsEndOfChapter == 0 && current.IsEndOfChapter == 1;
}

