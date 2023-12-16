create table Artists
	   (
			artist			varchar(20),		
			region			varchar(20),
			chart      		varchar(6),
		   
			primary key (artist)
	    );

create table Songs 
	    (
			title			varchar(20),
			rankk			numeric(3,0),
			datee			DATE,
			url			    varchar(60), 
			
			primary key (title)
	    );

create table ArtistSongTrend
	    (
			Artist			varchar(20),
			Title			varchar(20),
			trend			varchar(10),
			streams		    numeric(7,0),
			constraint fk_artiststat
			foreign key (Artist) references Artists(artist),
			constraint fk_musicBIO
			foreign key (Title) references Songs(title)	
	     );
