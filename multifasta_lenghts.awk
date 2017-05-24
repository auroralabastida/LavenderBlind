#To measure the length of the individual sequences of a multi-fasta files
BEGIN{FS="\n"; RS=">"}
{
	for(i=1;i<=NF;i++)
	{
		if(i==1)
		{
			head=$1
			 l=0
		}
		if(i>1&&i<(NF))
		{
			l=l+length($i)
		}
		if(i==NF)
		{
			l=l+length($i)
			print head"\t"l
		}
	}
}

