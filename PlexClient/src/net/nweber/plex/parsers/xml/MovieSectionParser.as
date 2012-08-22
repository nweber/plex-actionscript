package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IMovieParser;
	import net.nweber.plex.parsers.IMoviesSectionParser;
	import net.nweber.plex.valueObjects.Movie;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class MoviesSectionParser implements IMoviesSectionParser
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var movieParser:IMovieParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		/*
		<MediaContainer size="96" mediaTagPrefix="/system/bundle/media/flags/" mediaTagVersion="1343722542" sortAsc="1" viewGroup="movie" viewMode="458803" art="/:/resources/movie-fanart.jpg" title1="Movies" title2="All Movies" identifier="com.plexapp.plugins.library">
			<Video ratingKey="1877" key="/library/metadata/1877" studio="Fox Searchlight Pictures" type="movie" title="(500) Days of Summer" contentRating="PG-13" summary="(500) Days of Summer is a 2009 American comedy drama film. It was written by Scott Neustadter and Michael H. Weber, directed by Marc Webb, produced by Mark Waters, and stars Joseph Gordon-Levitt and Zooey Deschanel. The film employs a nonlinear narrative structure, with the story based upon its male protagonist and his memory-driven look at a failed relationship. Principal photography began in April 2008 in Los Angeles, California.&#xA;&#xA;As an independent production, it was picked up for distribution by Fox Searchlight Pictures and premiered at the 2009 Sundance Film Festival. It was a hit with audiences and received a standing ovation at the festival. It later went on wide release in the US on August 7, 2009, on September 2, 2009, in the UK and Ireland, and on September 17, 2009, in Australia.&#xA;&#xA;The film went on to achieve widespread success. It garnered critical acclaim and became a successful &quot;sleeper hit&quot;, earning over $60 million in worldwide returns, far exceeding its $7.5 million budget. Many critics lauded the film as one of the best from 2009, seeing it featured in many year end lists and drawing comparisons to other acclaimed films such as Annie Hall and High Fidelity.&#xA;&#xA;The film also received numerous awards and nominations; including Scott Neustadter and Michael H. Weber receiving the 2009 Satellite Award for Best Original Screenplay and the Independent Spirit Award for Best Screenplay. Notable nominations included two at the 67th Golden Globe Awards for Best Picture (Musical or Comedy), which it lost to The Hangover, and a nomination for Joseph Gordon-Levitt for Best Actor (Musical or Comedy), who lost to Robert Downey, Jr. for Sherlock Holmes." rating="7.9" viewCount="2" year="2009" tagline="Boy meets girl.  Boy falls in love.  Girl doesn't." thumb="/library/metadata/1877/thumb?t=1345328567" art="/library/metadata/1877/art?t=1345328567" duration="5700000" originallyAvailableAt="2009-07-17" addedAt="1343968682" updatedAt="1345328567">
			  <Media id="1712" duration="5704532" bitrate="13156" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2025/file.mkv" duration="5704532" file="\\GIMMICKY-SERVER\Videos\Movies\(500) Days Of Summer.mkv" size="9381296804" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy-drama"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Scott Neustadter"/>
			  <Writer tag="Michael H. Weber"/>
			  <Director tag="Marc Webb"/>
			  <Country tag="USA"/>
			  <Role tag="Zooey Deschanel"/>
			  <Role tag="Joseph Gordon-Levitt"/>
			  <Role tag="Rachel Boston"/>
			</Video>
			<Video ratingKey="5932" key="/library/metadata/5932" studio="Cruel and Unusual Films" type="movie" title="300" contentRating="R" summary="300 is a 2007 American action film based on the 1998 comic series of the same name by Frank Miller. It is a fictionalized retelling of the Battle of Thermopylae. The film was directed by Zack Snyder, while Miller served as executive producer and consultant. It was filmed mostly with a super-imposition chroma key technique, to help replicate the imagery of the original comic book.&#xA;&#xA;The plot revolves around King Leonidas (Gerard Butler), who leads 300 Spartans into battle against Persian &quot;god-King&quot; Xerxes (Rodrigo Santoro) and his army of more than one million soldiers. As the battle rages, Queen Gorgo (Lena Headey) attempts to rally support in Sparta for her husband. The story is framed by a voice-over narrative by the Spartan soldier Dilios (David Wenham). Through this narrative technique, various fantastical creatures are introduced, placing 300 within the genre of historical fantasy.&#xA;&#xA;300 was released in both conventional and IMAX theaters in the United States on March 9, 2007, and on DVD, Blu-ray Disc, and HD DVD on July 31, 2007. The film's opening was the 24th largest in box office history. It received acclaim for its original visuals and style, but was criticized for favoring visuals over characterization and its controversial depiction of the ancient Persians." rating="7.9" viewCount="2" year="2006" tagline="Prepare for glory!" thumb="/library/metadata/5932/thumb?t=1345172011" art="/library/metadata/5932/art?t=1345172011" duration="6960000" originallyAvailableAt="2006-12-09" addedAt="1345171943" updatedAt="1345172011">
			  <Media id="5346" duration="6992528" bitrate="24234" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5659/file.mkv" duration="6992528" file="\\GIMMICKY-SERVER\Videos\Movies\300.mkv" size="21182969926" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Zack Snyder"/>
			  <Writer tag="Kurt Johnstad"/>
			  <Director tag="Zack Snyder"/>
			  <Country tag="USA"/>
			  <Role tag="Dominic West"/>
			  <Role tag="Andrew Tiernan"/>
			  <Role tag="Rodrigo Santoro"/>
			</Video>
			<Video ratingKey="1" key="/library/metadata/1" studio="CoMix Wave Films" type="movie" title="5 Centimeters Per Second" summary="5 Centimeters Per Second, is a 2007 Japanese animated feature film by Makoto Shinkai. The film was finished on 22 January 2007. The first part of the film was debuted on Yahoo! Japan as streaming video to Yahoo! Premium members from 16 to 19 February 2007. On 3 March 2007, the full length featured film had its theatrical premiere at Cinema Rise in Shibuya, Tokyo. The film consists of three segments:,, and, totaling about an hour of runtime. As in Shinkai's previous works, Tenmon composes for this film's soundtrack. The DVD was released on 19 July 2007. A novel of 5 Centimeters Per Second has also been released, expanding on the film. On the July issue of Afternoon in 2010, a manga adaptation started serialization, illustrated by Seike Yukiko." rating="9.1" year="2007" thumb="/library/metadata/1/thumb?t=1343788180" art="/library/metadata/1/art?t=1343788180" duration="3780000" originallyAvailableAt="2007-03-03" addedAt="1343788167" updatedAt="1343788180">
			  <Media id="1" duration="3765792" bitrate="4978" width="1920" height="1080" aspectRatio="1.78" audioChannels="4" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/1/file.mkv" duration="3765792" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\5 Centimeters Per Second.mkv" size="2343510808" container="mkv"/>
			  </Media>
			  <Genre tag="Romantic drama"/>
			  <Genre tag="Drama"/>
			  <Director tag="Makoto Shinkai"/>
			  <Country tag="Japan"/>
			  <Role tag="Satomi Hanamura"/>
			  <Role tag="Kenji Mizuhashi"/>
			  <Role tag="Ayaka Onoue"/>
			</Video>
			<Video ratingKey="5943" key="/library/metadata/5943" studio="Happy Madison" type="movie" title="50 First Dates" contentRating="PG-13" summary="50 First Dates is a 2004 American romantic comedy film directed by Peter Segal and written by George Wing. The film stars Adam Sandler as a woman-chasing veterinarian and Drew Barrymore as an amnesiac, along with Rob Schneider, Sean Astin, Lusia Strus, Blake Clark, and Dan Aykroyd.&#xA;&#xA;Most of the film was shot on location in Oahu, Hawaii on the Windward side and the North Shore. Sandler and Barrymore won an MTV award. This is the second of their two films to date as costars, the first being The Wedding Singer.&#xA;&#xA;The fictitious memory impairment suffered by Barrymore's character, Goldfield's Syndrome, is similar to short term memory loss and Anterograde amnesia." rating="7.6" year="2004" tagline="Imagine having to win over the girl of your dreams... every friggin' day." thumb="/library/metadata/5943/thumb?t=1345438398" art="/library/metadata/5943/art?t=1345438398" duration="5940000" originallyAvailableAt="2004-02-13" addedAt="1345438341" updatedAt="1345438398">
			  <Media id="5357" duration="5943938" bitrate="5312" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5670/file.mkv" duration="5943938" file="\\GIMMICKY-SERVER\Videos\Movies\50 First Dates.mkv" size="3947053851" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Romance Film"/>
			  <Writer tag="George Wing"/>
			  <Director tag="Peter Segal"/>
			  <Country tag="USA"/>
			  <Role tag="Blake Clark"/>
			  <Role tag="Amy Hill"/>
			  <Role tag="Missi Pyle"/>
			</Video>
			<Video ratingKey="5941" key="/library/metadata/5941" studio="Revolution Studios" type="movie" title="Across the Universe" contentRating="PG-13" summary="Across the Universe is a 2007 musical romantic drama film directed by Julie Taymor, produced by Revolution Studios, and distributed by Columbia Pictures. The film's plot is centered around songs by The Beatles. The script is based on an original story credited to Taymor, Dick Clement and Ian La Frenais. It incorporates 34 compositions originally written by members of The Beatles.&#xA;&#xA;The film stars Evan Rachel Wood, Jim Sturgess, Joe Anderson and T. V. Carpio, and introduces Dana Fuchs and Martin Luther McCoy as actors. Cameo appearances are made by Bono, Eddie Izzard, Joe Cocker, Salma Hayek amongst others.&#xA;&#xA;Opening to mixed reviews, Across the Universe was nominated for both a Golden Globe and an Academy Award. Two members of the supporting cast, Carol Woods and Timothy T. Mitchum, performed as part of a special Beatles tribute at the 50th Grammy Awards." rating="8.2" viewCount="2" year="2007" tagline="All you need is love." thumb="/library/metadata/5941/thumb?t=1345315987" art="/library/metadata/5941/art?t=1345315987" duration="7980000" originallyAvailableAt="2007-09-10" addedAt="1345315942" updatedAt="1345315987">
			  <Media id="5355" duration="7997949" bitrate="5151" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5668/file.mkv" duration="7997949" file="\\GIMMICKY-SERVER\Videos\Movies\Across The Universe.mkv" size="5149704605" container="mkv"/>
			  </Media>
			  <Genre tag="Romance Film"/>
			  <Genre tag="Musical"/>
			  <Writer tag="Dick Clement"/>
			  <Writer tag="Ian La Frenais"/>
			  <Director tag="Julie Taymor"/>
			  <Country tag="USA"/>
			  <Role tag="Evan Rachel Wood"/>
			  <Role tag="Jim Sturgess"/>
			  <Role tag="Joe Anderson"/>
			</Video>
			<Video ratingKey="2460" key="/library/metadata/2460" studio="Toei Animation" type="movie" title="Adieu Galaxy Express 999" summary="Two years after the events of Galaxy Express 999, Earth has become a battlefield, and Tetsuro is summoned to board the Three-Nine once more. In this, the shattering, full-length theatrical conclusion to Leiji Matsumoto's epic story, all questions will be answered and all mysteries will be revealed as Tetsuro embarks on a journey which will reveal a secret so awful, even Maetel herself can hardly bear to speak of it." viewCount="1" year="1999" thumb="/library/metadata/2460/thumb?t=1344057369" art="/library/metadata/2460/art?t=1344057369" duration="8100000" originallyAvailableAt="1999-12-16" addedAt="1344057349" updatedAt="1344057369">
			  <Media id="2245" duration="7801504" bitrate="4643" width="1280" height="720" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2558/file.mkv" duration="7801504" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Adieu Galaxy Express 999 (1981).mkv" size="4528550264" container="mkv"/>
			  </Media>
			</Video>
			<Video ratingKey="14" key="/library/metadata/14" studio="Village Roadshow Pictures" type="movie" title="The Animatrix" titleSort="Animatrix" contentRating="PG-13" summary="The Animatrix is a 2003 direct-to-video anthology film based on The Matrix trilogy. The film is a compilation of nine animated short films. It details upon the backstory of the &quot;Matrix&quot; universe, and the original war between man and machines which led to the creation of the Matrix." rating="7.4" viewCount="2" year="2003" thumb="/library/metadata/14/thumb?t=1343865819" art="/library/metadata/14/art?t=1343865819" duration="5340000" originallyAvailableAt="2003-04-17" addedAt="1343788168" updatedAt="1343865819">
			  <Media id="14" duration="6050471" bitrate="11552" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/14/file.mkv" duration="6050471" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\The Animatrix.mkv" size="8736909074" container="mkv"/>
			  </Media>
			  <Genre tag="Action"/>
			  <Genre tag="Adventure"/>
			  <Writer tag="Larry Wachowski"/>
			  <Writer tag="Yoshiaki Kawajiri"/>
			  <Director tag="Koji Morimoto"/>
			  <Director tag="Mahiro Maeda"/>
			  <Director tag="Andy Jones"/>
			  <Country tag="USA"/>
			  <Role tag="Pamela Adlon"/>
			  <Role tag="Hedy Burress"/>
			  <Role tag="Dwight Schultz"/>
			</Video>
			<Video ratingKey="2133" key="/library/metadata/2133" studio="Syncopy Films" type="movie" title="Batman Begins" contentRating="PG-13" summary="Batman Begins is a 2005 superhero film based on the fictional DC Comics character Batman, directed by Christopher Nolan. It stars Christian Bale as Batman along with Michael Caine, Liam Neeson, Katie Holmes, Gary Oldman, and Morgan Freeman. The film reboots the Batman film series, telling the origin story of the character from Bruce Wayne's initial fear of bats, the death of his parents, his journey to become Batman, and his fight against Ra's al Ghul's plot to destroy Gotham City by vaporizing the water supply into gas laced with the Scarecrow's fear-inducing toxin. It draws inspiration from classic comic book storylines such as The Man Who Falls, Batman: Year One, and Batman: The Long Halloween.&#xA;&#xA;After a series of unsuccessful projects to resurrect Batman on screen following the 1997 critical failure of Batman &amp; Robin, Nolan and David S. Goyer began to work on the film in early 2003 and aimed for a darker and more realistic tone, with humanity and realism being the basis of the film. The goal was to get the audience to care for both Batman and Bruce Wayne. The film, which was primarily shot in England and Chicago, relied on traditional stunts and miniatures—computer-generated imagery was used minimally. A new Batmobile (called the Tumbler) and a more mobile Batsuit were both created specifically for the film.&#xA;&#xA;Batman Begins was both critically and commercially successful. The film opened on June 15, 2005, in the United States and Canada in 3,858 theaters. It grossed $48 million in its opening weekend, eventually grossing over $372 million worldwide. The film received an 85% overall approval rating from Rotten Tomatoes. Critics noted that fear was a common motif throughout the film, and remarked that it had a darker tone compared with previous Batman films. The film was nominated for the Academy Award for Best Cinematography and for three BAFTA awards . It was also listed at #81 on Empire's &quot;500 Greatest Movies of All Time&quot; and has maintained a standing on IMDb's &quot;Top 250&quot; .&#xA;&#xA;The film begins Nolan's Batman trilogy; a sequel titled The Dark Knight was released in July 2008 and also saw the return of both Nolan and Bale to the franchise, and a final sequel titled The Dark Knight Rises was released on July 20, 2012." rating="8.3" viewCount="2" year="2005" tagline="Evil Fears The Knight" thumb="/library/metadata/2133/thumb?t=1344033116" art="/library/metadata/2133/art?t=1344033116" duration="8400000" originallyAvailableAt="2005-06-10" addedAt="1344033040" updatedAt="1344033116">
			  <Media id="1947" duration="8402811" bitrate="10584" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2260/file.mkv" duration="8402811" file="\\GIMMICKY-SERVER\Videos\Movies\Batman Begins.mkv" size="11117086525" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Reboot"/>
			  <Writer tag="Christopher Nolan"/>
			  <Writer tag="David S. Goyer"/>
			  <Director tag="Christopher Nolan"/>
			  <Country tag="USA"/>
			  <Role tag="Christian Bale"/>
			  <Role tag="Cillian Murphy"/>
			  <Role tag="Tom Wilkinson"/>
			</Video>
			<Video ratingKey="5944" key="/library/metadata/5944" studio="Columbia Pictures" type="movie" title="Big Fish" contentRating="PG-13" summary="Big Fish is a 2003 American fantasy adventure film based on the 1998 novel of the same name by Daniel Wallace. The film was directed by Tim Burton and stars Ewan McGregor, Albert Finney, Billy Crudup, Jessica Lange, and Marion Cotillard. Other roles are performed by Helena Bonham Carter, Matthew McGrory, and Danny DeVito among others. Finney plays Edward Bloom, a former traveling salesman from the Southern United States with a gift for storytelling, now confined to his deathbed. Bloom's estranged son, a journalist played by Crudup, attempts to mend their relationship as his dying father relates tall tales of his eventful life as a young adult, played by Ewan McGregor.&#xA;&#xA;Screenwriter John August read a manuscript of the novel six months before it was published and convinced Columbia Pictures to acquire the rights. August began adapting the novel while producers negotiated with Steven Spielberg who planned to direct after finishing Minority Report (2002). Spielberg considered Jack Nicholson for the role of Edward Bloom, but eventually dropped the project to focus on Catch Me If You Can (2002). Tim Burton and Richard D. Zanuck took over after completing Planet of the Apes (2001) and brought Ewan McGregor and Albert Finney on board.&#xA;&#xA;The film's theme of reconciliation between a dying father and his son had special significance for Burton, as his father had died in 2000 and his mother in 2002, a month before he signed on to direct. Big Fish was shot on location in Alabama in a series of fairy tale vignettes evoking the tone of a Southern Gothic fantasy. The film received award nominations in multiple film categories, including four Golden Globe Award nominations, seven nominations from the British Academy of Film and Television Arts, two Saturn Award nominations, and an Oscar and a Grammy Award nomination for Danny Elfman's original score." rating="7.7" year="2003" tagline="An adventure as big as life itself." thumb="/library/metadata/5944/thumb?t=1345438397" art="/library/metadata/5944/art?t=1345438397" duration="6600000" originallyAvailableAt="2003-12-10" addedAt="1345438343" updatedAt="1345438397">
			  <Media id="5358" duration="7509168" bitrate="7726" width="1280" height="688" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5671/file.mkv" duration="7509168" file="\\GIMMICKY-SERVER\Videos\Movies\Big Fish.mkv" size="7252401593" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy-drama"/>
			  <Writer tag="John August"/>
			  <Director tag="Tim Burton"/>
			  <Country tag="USA"/>
			  <Role tag="Matthew McGrory"/>
			  <Role tag="Marion Cotillard"/>
			  <Role tag="Robert Guillaume"/>
			</Video>
			<Video ratingKey="2134" key="/library/metadata/2134" studio="Pixar" type="movie" title="Boundin'" contentRating="G" summary="Boundin' is a 2004 Pixar short film, shown in theaters with The Incredibles. The film was written, directed, narrated and featured the musical composition and performance of PIXAR animator Bud Luckey." rating="8.8" viewCount="2" year="2003" thumb="/library/metadata/2134/thumb?t=1344046578" art="/library/metadata/2134/art?t=1344046578" duration="300000" originallyAvailableAt="2004-11-05" addedAt="1344046552" updatedAt="1344046578">
			  <Media id="1948" duration="282741" bitrate="11815" width="1920" height="1036" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2261/file.mkv" duration="282741" file="\\GIMMICKY-SERVER\Videos\Movies\Boundin' (2003).mkv" size="417600487" container="mkv"/>
			  </Media>
			  <Genre tag="Computer Animation"/>
			  <Genre tag="Short Film"/>
			  <Writer tag="Bud Luckey"/>
			  <Director tag="Bud Luckey"/>
			  <Director tag="Roger Gould"/>
			  <Country tag="USA"/>
			  <Role tag="Bud Luckey"/>
			</Video>
			<Video ratingKey="1878" key="/library/metadata/1878" studio="Warner Bros. Entertainment" type="movie" title="Brave Story" summary="Jr. High School Student Wataru and his friends like playing in an abandond building and looking for ghosts. However it seems he is not the only one. Another mysterious student Mitsuru shows Wataru that there is a magical door to another world where one can go and get the Goddess of Fortune to grant one wish! When tragedy strikes Wataru's family he decides to open the door for himself." year="2006" thumb="/library/metadata/1878/thumb?t=1343969198" art="/library/metadata/1878/art?t=1343969198" duration="6660000" originallyAvailableAt="2006-07-08" addedAt="1343969184" updatedAt="1343969198">
			  <Media id="1713" duration="6721728" bitrate="3698" width="1280" height="720" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2026/file.mkv" duration="6721728" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Brave Story.mkv" size="3107834310" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="World cinema"/>
			  <Director tag="Koichi Chigira"/>
			  <Country tag="Japan"/>
			  <Role tag="Eiji Wentz"/>
			  <Role tag="Taro Ishida"/>
			  <Role tag="Kirin Kiki"/>
			</Video>
			<Video ratingKey="1443" key="/library/metadata/1443" studio="Walt Disney Pictures" type="movie" title="A Bug's Life" titleSort="Bug's Life" contentRating="G" summary="A Bug's Life is a 1998 American computer animated adventure comedy film produced by Pixar and released by Walt Disney Pictures in the United States on November 25, 1998. Directed by John Lasseter and co-directed by Andrew Stanton, the film is the second Disney-Pixar feature film after Toy Story, and the third American computer-animated film after Toy Story and DreamWorks' Antz. Based on Akira Kurosawa's film Seven Samurai, and Aesop's fable &quot;The Ant and the Grasshopper&quot;, it tells the tale of an oddball individualist inventor ant named Flik who hires what he thinks are &quot;warrior bugs&quot; — actually circus performers — to fight off a small band of grasshoppers who have made the ant colony their servants. The film received positive reception and was a box office success." viewCount="2" year="1998" tagline="An epic of miniature proportions." thumb="/library/metadata/1443/thumb?t=1343952953" art="/library/metadata/1443/art?t=1343952953" duration="5760000" originallyAvailableAt="1998-11-14" addedAt="1343952933" updatedAt="1343952953">
			  <Media id="1315" duration="5693760" bitrate="2112" width="1280" height="544" aspectRatio="2.35" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="720" container="mp4" videoFrameRate="24p" optimizedForStreaming="1">
				<Part key="/library/parts/1533/file.mp4" duration="5693760" file="\\GIMMICKY-SERVER\Videos\Movies\A Bug's Life.mp4" size="1503197062" container="mp4" has64bitOffsets="0" optimizedForStreaming="1"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Don McEnery"/>
			  <Writer tag="Bob Shaw"/>
			  <Director tag="Andrew Stanton"/>
			  <Director tag="John Lasseter"/>
			  <Country tag="USA"/>
			  <Role tag="Hayden Panettiere"/>
			  <Role tag="Bonnie Hunt"/>
			  <Role tag="Madeline Kahn"/>
			</Video>
			<Video ratingKey="2618" key="/library/metadata/2618" studio="Pixar" type="movie" title="Cars" contentRating="G" summary="Cars is a 2006 American computer-animated comedy-adventure film produced by Pixar and directed by John Lasseter and co-directed by Joe Ranft. It is the seventh Disney·Pixar feature film, and Pixar's final, independently-produced motion picture before its purchase by Disney. Set in a world populated entirely by anthropomorphic cars and other vehicles, it features voices by Owen Wilson, Larry the Cable Guy, Paul Newman (in his final non-documentary feature), Bonnie Hunt, Tony Shalhoub, Cheech Marin, Michael Wallis, George Carlin, Paul Dooley, Jenifer Lewis, Guido Quaroni, Michael Keaton, Katherine Helmond, and John Ratzenberger as well as voice cameos by several celebrities including Jeremy Piven, Jeremy Clarkson, Richard Petty, Dale Earnhardt, Jr., Bob Costas, Darrell Waltrip, Jay Leno, Michael Schumacher, Tom and Ray Magliozzi from NPR's Car Talk, and Mario Andretti. The film is also the second Pixar film—after A Bug's Life—to have an entirely non-human cast.&#xA;&#xA;Cars premiered on May 26, 2006 at Lowe's Motor Speedway in Concord, North Carolina, and was released on June 9, 2006, to generally favorable reviews. It was nominated for two Academy Awards, including Best Animated Feature, and won the Golden Globe Award for Best Animated Feature Film. It was released on DVD November 7, 2006 and on Blu-ray Disc in late 2007. Related merchandise, including scale models of several of the cars, broke records for retail sales of merchandise based on a Disney·Pixar film, with an estimated $5 billion in sales.&#xA;&#xA;A sequel, Cars 2, was released on June 24, 2011." rating="8" viewCount="2" year="2006" tagline="Ahhh... it's got that new movie smell." thumb="/library/metadata/2618/thumb?t=1344565941" art="/library/metadata/2618/art?t=1344565941" duration="7020000" originallyAvailableAt="2006-06-08" addedAt="1344313446" updatedAt="1344565941">
			  <Media id="2391" duration="6995948" bitrate="9144" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2704/file.mkv" duration="6995948" file="\\GIMMICKY-SERVER\Videos\Movies\Cars.mkv" size="7996466302" container="mkv"/>
			  </Media>
			  <Genre tag="Sports"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Bonnie Hunt"/>
			  <Writer tag="Joe Ranft"/>
			  <Director tag="John Lasseter"/>
			  <Director tag="Joe Ranft"/>
			  <Country tag="USA"/>
			  <Role tag="Dale Earnhardt, Jr."/>
			  <Role tag="Jay Leno"/>
			  <Role tag="Tim Allen"/>
			</Video>
			<Video ratingKey="5838" key="/library/metadata/5838" studio="Pixar" type="movie" title="Cars 2" contentRating="G" summary="Cars 2 is a 2011 American computer-animated action comedy spy film produced by Pixar Animation Studios and distributed by Walt Disney Pictures. The film is the sequel to the 2006 film Cars. In the film, race car Lightning McQueen (voiced by Owen Wilson) and tow truck Mater (voiced by Larry the Cable Guy) head to Japan and Europe to compete in the World Grand Prix, but Mater becomes sidetracked with international espionage. The film is directed by John Lasseter, co-directed by Brad Lewis, written by Ben Queen, and produced by Denise Ream. Cars 2 is also the first film John Lasseter has directed since the first Cars in 2006.&#xA;&#xA;The film was distributed by Walt Disney Pictures and was released in the United States on June 24, 2011. The film was presented in Disney Digital 3D and IMAX 3D, as well as traditional two-dimensional and IMAX formats.&#xA;The film was first announced in 2008, alongside Up, Newt, and Brave (previously known as The Bear and the Bow), and it is the 12th animated film from the studio. The film received mixed reviews from critics, and broke the studio's streak of critical success, despite ranking No. 1 on its opening weekend in the U.S. and Canada with $66,135,507 and topping international success of such previous Pixar's works as Toy Story, A Bug's Life, Toy Story 2, Monsters, Inc., Cars, and WALL-E." rating="6.6" viewCount="2" year="2011" tagline="Ka-ciao!" thumb="/library/metadata/5838/thumb?t=1344565993" art="/library/metadata/5838/art?t=1344565993" duration="6780000" originallyAvailableAt="2011-06-18" addedAt="1344388033" updatedAt="1344565993">
			  <Media id="5260" duration="6421441" bitrate="6940" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5573/file.mkv" duration="6421441" file="\\GIMMICKY-SERVER\Videos\Movies\Cars 2.mkv" size="5571372592" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Writer tag="Ben Queen"/>
			  <Director tag="Brad Lewis"/>
			  <Director tag="John Lasseter"/>
			  <Country tag="USA"/>
			  <Role tag="Owen Wilson"/>
			  <Role tag="Larry the Cable Guy"/>
			  <Role tag="Bonnie Hunt"/>
			</Video>
			<Video ratingKey="5945" key="/library/metadata/5945" studio="Columbia Pictures" type="movie" title="Click" contentRating="PG-13" summary="Click is a 2006 sci-fi comedy-drama film directed by Frank Coraci and written by Mark O'Keefe and Steve Koren. It stars Adam Sandler as an overworked architect who neglects his family and misses most of his life when he receives a remote-control device that enables him to skip over unpleasant events. It also stars Kate Beckinsale as his wife and Christopher Walken as the man who gives him the device.&#xA;Filming began in late 2005 and was finished by early 2006. The film was released in North America on June 23, 2006 by Columbia Pictures. It was nominated for an Academy Award for Best Makeup." rating="7.9" year="2006" tagline="What If You Had A Universal Remote... That Controlled Your Universe?" thumb="/library/metadata/5945/thumb?t=1345438397" art="/library/metadata/5945/art?t=1345438397" duration="5520000" originallyAvailableAt="2006-06-22" addedAt="1345438343" updatedAt="1345438397">
			  <Media id="5359" duration="6451445" bitrate="7699" width="1280" height="688" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5672/file.mkv" duration="6451445" file="\\GIMMICKY-SERVER\Videos\Movies\Click.mkv" size="6209007266" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy-drama"/>
			  <Writer tag="Mark O'Keefe"/>
			  <Writer tag="Steve Koren"/>
			  <Director tag="Frank Coraci"/>
			  <Country tag="USA"/>
			  <Role tag="Henry Winkler"/>
			  <Role tag="Julie Kavner"/>
			  <Role tag="Sean Astin"/>
			</Video>
			<Video ratingKey="5935" key="/library/metadata/5935" studio="Warner Bros. Entertainment" type="movie" title="Corpse Bride" contentRating="PG" summary="Corpse Bride, often referred as Tim Burton's Corpse Bride, is a 2005 stop-motion-animated fantasy musical film directed by Mike Johnson and Tim Burton. It is set in a fictional Victorian era village in Europe. Johnny Depp led an all-star cast as the voice of Victor, while Helena Bonham Carter voiced Emily, the title character. Corpse Bride is the second stop-motion feature film produced by Tim Burton (not including his short film Vincent), the first being The Nightmare Before Christmas.&#xA;&#xA;The film was nominated in the 78th Academy Awards for Best Animated Feature, but was bested by Wallace &amp; Gromit: The Curse of the Were-Rabbit. It was shot with a battery of Canon EOS-1D Mark II digital SLRs, rather than the 35mm film cameras used for Burton's previous stop-motion film The Nightmare Before Christmas." rating="7.2" viewCount="2" year="2005" tagline="There's been a grave misunderstanding." thumb="/library/metadata/5935/thumb?t=1345272768" art="/library/metadata/5935/art?t=1345272768" duration="4620000" originallyAvailableAt="2005-09-07" addedAt="1345272742" updatedAt="1345272768">
			  <Media id="5349" duration="4631586" bitrate="4833" width="1280" height="720" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5662/file.mkv" duration="4631586" file="\\GIMMICKY-SERVER\Videos\Movies\Corpse Bride.mkv" size="2798396253" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Caroline Thompson"/>
			  <Writer tag="Pamela Pettler"/>
			  <Director tag="Tim Burton"/>
			  <Director tag="Mike Johnson"/>
			  <Country tag="United Kingdom"/>
			  <Role tag="Michael Gough"/>
			  <Role tag="Tracey Ullman"/>
			  <Role tag="Paul Whitehouse"/>
			</Video>
			<Video ratingKey="2497" key="/library/metadata/2497" studio="Syncopy Films" type="movie" title="The Dark Knight" titleSort="Dark Knight" contentRating="PG-13" summary="The Dark Knight is a 2008 superhero film directed, produced, and co-written by Christopher Nolan. Based on the DC Comics character Batman, the film is the second part of Nolan's Batman film series and a sequel to 2005's Batman Begins. Christian Bale reprises the lead role of Bruce Wayne/Batman, with a returning cast of Michael Caine as Alfred Pennyworth, Gary Oldman as James Gordon and Morgan Freeman as Lucius Fox. The film introduces the character of Harvey Dent (Aaron Eckhart), Gotham's newly elected District Attorney and the consort of Bruce Wayne's childhood friend Rachel Dawes (Maggie Gyllenhaal), who joins Batman and the police in combating the new rising threat of a criminal mastermind calling himself the &quot;Joker&quot; (Heath Ledger).&#xA;&#xA;Nolan's inspiration for the film was the Joker's comic book debut in 1940, the 1988 graphic novel The Killing Joke, and the 1996 series The Long Halloween, which retold Two-Face's origin. In addition, elements of Steve Englehart and Marshall Rogers' Dark Detective miniseries and its unpublished follow-up were reportedly mined along with other elements of Batman mythology for the story. The nickname &quot;the Dark Knight&quot; was first applied to Batman in Batman #1 (1940), in a story written by Bill Finger. The Dark Knight was filmed primarily in Chicago, as well as in several other locations in the United States, the United Kingdom, and Hong Kong. Nolan used an IMAX camera to film some sequences, including the Joker's first appearance in the film. On January 22, 2008, some months after he had completed filming on The Dark Knight and six months before the film's release, Heath Ledger died from a toxic combination of prescription drugs, leading to intense attention from the press and movie-going public. Warner Bros. had initially created a viral marketing campaign for The Dark Knight, developing promotional websites and trailers highlighting screen shots of Ledger as the Joker, but after Ledger's death, the studio refocused its promotional campaign.&#xA;&#xA;The Dark Knight was released on July 16, 2008 in Australia, on July 18, 2008 in North America, and on July 24, 2008 in the United Kingdom. The film received highly positive reviews and set numerous records during its theatrical run. With over $1 billion in revenue worldwide, it is the twelfth highest-grossing film of all time, unadjusted for inflation. The film received eight Academy Award nominations; it won the award for Best Sound Editing and Ledger was posthumously awarded Best Supporting Actor. The Dark Knight Rises, the final part of a trilogy, was released on 20 July 2012." rating="8.8" viewCount="2" year="2008" tagline="Why so serious?" thumb="/library/metadata/2497/thumb?t=1344100608" art="/library/metadata/2497/art?t=1344100608" duration="9120000" originallyAvailableAt="2008-07-16" addedAt="1344100552" updatedAt="1344100608">
			  <Media id="2277" duration="9133291" bitrate="13685" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2590/file.mkv" duration="9133291" file="\\GIMMICKY-SERVER\Videos\Movies\The Dark Knight.mkv" size="15623950249" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Action"/>
			  <Writer tag="Christopher Nolan"/>
			  <Writer tag="Jonathan Nolan"/>
			  <Director tag="Christopher Nolan"/>
			  <Country tag="United Kingdom"/>
			  <Role tag="Aaron Eckhart"/>
			  <Role tag="Christian Bale"/>
			  <Role tag="Heath Ledger"/>
			</Video>
			<Video ratingKey="2586" key="/library/metadata/2586" studio="Kyoto Animation" type="movie" title="The Disappearance of Haruhi Suzumiya" titleSort="Disappearance of Haruhi Suzumiya" summary="The Disappearance of Haruhi Suzumiya|涼宮ハルヒの消失|Suzumiya Haruhi no Shōshitsu}}, or The Vanishment of Haruhi Suzumiya, is a 2010 Japanese animated film based on the fourth light novel of the same name written by Nagaru Tanigawa. It is produced by Kyoto Animation and directed by Tatsuya Ishihara and Yasuhiro Takemoto. It was released in Japanese theaters on February 6, 2010 and on DVD and Blu-ray Disc on December 18, 2010. The film has been licensed by Bandai Entertainment in North America and Manga Entertainment in the UK." viewCount="2" year="2010" thumb="/library/metadata/2586/thumb?t=1344303738" art="/library/metadata/2586/art?t=1344303738" duration="9780000" originallyAvailableAt="2010-02-06" addedAt="1344303720" updatedAt="1344303738">
			  <Media id="2362" duration="9707700" bitrate="4513" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="flac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2675/file.mkv" duration="9707700" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\The Disappearance of Haruhi Suzumiya.mkv" size="5476664451" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Mystery"/>
			  <Writer tag="Fumihiko Shimo"/>
			  <Writer tag="Alex Von David"/>
			  <Director tag="Tatsuya Ishihara"/>
			  <Director tag="Yasuhiro Takemoto"/>
			  <Country tag="Japan"/>
			  <Role tag="스기타 도모카즈"/>
			  <Role tag="Aya Hirano"/>
			  <Role tag="Minori Chihara"/>
			</Video>
			<Video ratingKey="5946" key="/library/metadata/5946" studio="Lions Gate Entertainment" type="movie" title="Dogma" contentRating="R" summary="Dogma is a 1999 American adventure fantasy comedy film written and directed by Kevin Smith, who also stars in the film along with an ensemble cast that includes Ben Affleck, Matt Damon, Linda Fiorentino, Alan Rickman, Bud Cort, Salma Hayek, Chris Rock, Jason Lee, George Carlin, Janeane Garofalo, Alanis Morissette, and Jason Mewes.&#xA;&#xA;Brian O'Halloran and Jeff Anderson, the stars of Smith's debut film Clerks, have cameo roles, as do Smith regulars Scott Mosier, Dwight Ewell, Walt Flanagan, and Bryan Johnson.&#xA;&#xA;The fourth film set in the View Askewniverse is a hypothetical-scenario film revolving around the Catholic Church and Catholic belief, which caused organized protests and much controversy in many countries, delaying release of the film and leading to at least two death threats against Smith. The film follows two fallen angels, Loki and Bartleby, who, through a loophole in Catholic Dogma, find a way to get back into Heaven after being cast out by God. However, as existence is founded on the principle that God is infallible, their success would prove God wrong and thus undo all creation. The last scion and two prophets are sent by the Voice of God to stop them.&#xA;&#xA;Aside from some scenes filmed on the New Jersey shore, most of the film was shot in Pittsburgh, Pennsylvania." rating="7.4" year="1999" tagline="Get 'touched' by an angel." thumb="/library/metadata/5946/thumb?t=1345438411" art="/library/metadata/5946/art?t=1345438411" duration="7800000" originallyAvailableAt="1999-05-21" addedAt="1345438344" updatedAt="1345438411">
			  <Media id="5360" duration="7691643" bitrate="3573" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5673/file.mkv" duration="7691643" file="\\GIMMICKY-SERVER\Videos\Movies\Dogma.mkv" size="3435705898" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Cult"/>
			  <Writer tag="Kevin Smith"/>
			  <Director tag="Kevin Smith"/>
			  <Country tag="USA"/>
			  <Role tag="Janeane Garofalo"/>
			  <Role tag="Bud Cort"/>
			  <Role tag="Brian O'Halloran"/>
			</Video>
			<Video ratingKey="5947" key="/library/metadata/5947" type="movie" title="Dr. Horrible's Sing-Along Blog" summary="Dr. Horrible's Sing-Along Blog is a 2008 musical tragicomedy miniseries in three acts, produced exclusively for Internet distribution. Filmed and set in Los Angeles, the show tells the story of Dr. Horrible (played by Neil Patrick Harris), an aspiring supervillain; Captain Hammer (Nathan Fillion), his nemesis; and Penny (Felicia Day), their shared love interest.&#xA;&#xA;The movie was written by writer/director Joss Whedon, his brothers Zack Whedon (a television writer) and Jed Whedon (a composer), and writer/actress Maurissa Tancharoen. The team wrote the musical during the 2007–2008 Writers Guild of America strike. The idea was to create something small and inexpensive, yet professionally done, in a way that would circumvent the issues that were being protested during the strike. On October 31, 2008, Time magazine named it #15 in Times Top 50 Inventions of 2008. It also won the People's Choice Award for &quot;Favorite Online Sensation&quot;, and the 2009 Hugo Award for Best Dramatic Presentation, Short Form. In the inaugural 2009 Streamy Awards for web television, Dr. Horrible won seven awards: Audience Choice Award for Best Web Series, Best Directing for a Comedy Web Series, Best Writing for a Comedy Web Series, Best Male Actor in a Comedy Web Series (Harris), Best Editing, Best Cinematography, and Best Original Music. It also won a 2009 Creative Arts Emmy Award for Outstanding Special Class – Short-format Live-Action Entertainment Programs." rating="9.5" year="2008" tagline="He has a Ph.D. in horribleness!" thumb="/library/metadata/5947/thumb?t=1345438401" art="/library/metadata/5947/art?t=1345438401" duration="2580000" originallyAvailableAt="2008-07-15" addedAt="1345438344" updatedAt="1345438401">
			  <Media id="5361" duration="2542540" bitrate="29785" width="1920" height="1088" aspectRatio="1.78" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5674/file.mkv" duration="2542540" file="\\GIMMICKY-SERVER\Videos\Movies\Dr Horrible's Sing-Along Blog.mkv" size="9466230138" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Indie"/>
			  <Director tag="Joss Whedon"/>
			  <Country tag="USA"/>
			  <Role tag="Simon Helberg"/>
			  <Role tag="Neil Patrick Harris"/>
			</Video>
			<Video ratingKey="2135" key="/library/metadata/2135" studio="Pixar" type="movie" title="Dug's Special Mission" contentRating="G" summary="Dug's Special Mission (2009) is a short Pixar film, directed by Ronnie del Carmen. It is tied into and included on the DVD and Blu-ray Disc release of Up." rating="8.1" viewCount="2" year="2009" thumb="/library/metadata/2135/thumb?t=1344046577" art="/library/metadata/2135/art?t=1344046577" duration="300000" originallyAvailableAt="2009-11-10" addedAt="1344046552" updatedAt="1344046577">
			  <Media id="1949" duration="282688" bitrate="9717" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2262/file.mkv" duration="282688" file="\\GIMMICKY-SERVER\Videos\Movies\Dug's Special Mission (2009).mkv" size="343374751" container="mkv"/>
			  </Media>
			  <Genre tag="Computer Animation"/>
			  <Genre tag="Animation"/>
			  <Director tag="Ronnie del Carmen"/>
			  <Country tag="USA"/>
			  <Role tag="Bob Peterson"/>
			  <Role tag="Delroy Lindo"/>
			  <Role tag="Ed Asner"/>
			</Video>
			<Video ratingKey="5940" key="/library/metadata/5940" studio="20th Century Fox" type="movie" title="Edward Scissorhands" contentRating="PG-13" summary="Edward Scissorhands is a 1990 American romantic fantasy film directed by Tim Burton and starring Johnny Depp. The film shows the story of an artificial man named Edward, an unfinished creation, who has scissors for hands. Edward is taken in by a suburban family and falls in love with their teenage daughter Kim. Supporting roles are portrayed by Winona Ryder, Dianne Wiest, Anthony Michael Hall, Kathy Baker, Vincent Price, and Alan Arkin. &#xA;&#xA;Burton conceived the idea for Edward Scissorhands from his childhood upbringing in suburban Burbank, California. During pre-production of Beetlejuice, Caroline Thompson was hired to adapt Burton's story into a screenplay, and the film began development at 20th Century Fox, after Warner Bros. passed on the project. Edward Scissorhands was then fast tracked after Burton's success with Batman. Before Depp's casting, the leading role of Edward had been connected to Tom Cruise, Tom Hanks, Robert Downey, Jr., and William Hurt, while the role of The Inventor was written specifically for Vincent Price, and was ultimately his final performance.&#xA;&#xA;The majority of filming took place in the Tampa Bay Area of Florida, which generated over $6 million for the local economy. Edward's scissor hands were created and designed by Stan Winston. The film is also the fourth feature collaboration between Burton and film score composer Danny Elfman. Edward Scissorhands was released with positive feedback from critics, and was a financial success. The film received numerous nominations at the Academy Awards, British Academy Film Awards, Saturn Awards, as well as winning the Hugo Award for Best Dramatic Presentation. Both Burton and Elfman consider Edward Scissorhands their most personal and favorite work." rating="8.4" viewCount="2" year="1990" tagline="His story will touch you, even though he can't." thumb="/library/metadata/5940/thumb?t=1345308780" art="/library/metadata/5940/art?t=1345308780" duration="6000000" originallyAvailableAt="1990-12-06" addedAt="1345308746" updatedAt="1345308780">
			  <Media id="5354" duration="6303297" bitrate="9886" width="1280" height="688" aspectRatio="1.85" audioChannels="4" audioCodec="dca" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5667/file.mkv" duration="6303297" file="\\GIMMICKY-SERVER\Videos\Movies\Edward Scissorhands.mkv" size="7789561994" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy-drama"/>
			  <Writer tag="Caroline Thompson"/>
			  <Director tag="Tim Burton"/>
			  <Country tag="USA"/>
			  <Role tag="Robert Oliveri"/>
			  <Role tag="Conchata Ferrell"/>
			  <Role tag="Kathy Baker"/>
			</Video>
			<Video ratingKey="2585" key="/library/metadata/2585" studio="Khara" type="movie" title="Evangelion: 2.0" contentRating="NR" summary="Evangelion: 2.0 You Can (Not) Advance.|ヱヴァンゲリヲン新劇場版: 破|Evangerion Shin Gekijōban: Ha|lit. &quot;Evangelion: The New Movies: Break&quot;}} is a 2009 Japanese animated film directed by Kazuya Tsurumaki and Masayuki, and written by Hideaki Anno. It is the second of four films released in the Rebuild of Evangelion tetralogy based on the original anime series Neon Genesis Evangelion. It was produced and co-distributed by Hideaki Anno's Studio Khara." rating="9.4" year="2009" thumb="/library/metadata/2585/thumb?t=1344303763" art="/library/metadata/2585/art?t=1344303763" duration="6720000" originallyAvailableAt="2009-06-27" addedAt="1344303717" updatedAt="1344303763">
			  <Media id="2361" duration="6729515" bitrate="13938" width="1920" height="1080" aspectRatio="1.78" audioChannels="7" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2674/file.mkv" duration="6729515" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Evangelion 2.22 - You Can (Not) Advance.mkv" size="11724784014" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Hideaki Anno"/>
			  <Director tag="Kazuya Tsurumaki"/>
			  <Director tag="Hideaki Anno"/>
			  <Director tag="Masayuki"/>
			  <Country tag="Japan"/>
			  <Role tag="Megumi Hayashibara"/>
			  <Role tag="Kotono Mitsuishi"/>
			  <Role tag="Megumi Ogata"/>
			</Video>
			<Video ratingKey="5917" key="/library/metadata/5917" studio="Gaumont Film Company" type="movie" title="The Fifth Element" titleSort="Fifth Element" contentRating="PG-13" summary="The Fifth Element is a 1997 French comedy-science fiction film directed, co-written, and based on a story by Luc Besson, starring Bruce Willis, Gary Oldman, and Milla Jovovich. Mostly set during the twenty-third century, the film's central plot involves the survival of humanity, which becomes the duty of Korben Dallas (Willis) – a taxicab driver (and former special forces Major) – when a young woman (Jovovich) falls into his taxicab. Upon learning about her significance, Dallas must join efforts with the girl to recover four mystical stones essential to defending Earth from an impending attack." rating="8.6" viewCount="2" year="1997" tagline="There is no future without it." thumb="/library/metadata/5917/thumb?t=1345088052" art="/library/metadata/5917/art?t=1345088052" duration="7560000" originallyAvailableAt="1997-05-07" addedAt="1345088032" updatedAt="1345088052">
			  <Media id="5332" duration="7553505" bitrate="6874" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5645/file.mkv" duration="7553505" file="\\GIMMICKY-SERVER\Videos\Movies\The Fifth Element.mkv" size="6490956738" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Thriller"/>
			  <Writer tag="Robert Mark Kamen"/>
			  <Writer tag="Luc Besson"/>
			  <Director tag="Luc Besson"/>
			  <Country tag="USA"/>
			  <Role tag="Ian Holm"/>
			  <Role tag="Chris Tucker"/>
			  <Role tag="Brion James"/>
			</Video>
			<Video ratingKey="5915" key="/library/metadata/5915" studio="Regency Enterprises" type="movie" title="Fight Club" contentRating="R" summary="Fight Club is a 1999 American film based on the 1996 novel of the same name by Chuck Palahniuk. The film was directed by David Fincher and stars Edward Norton, Brad Pitt, and Helena Bonham Carter. Norton plays the unnamed protagonist, an &quot;everyman&quot; who is discontented with his white-collar job. He forms a &quot;fight club&quot; with soap maker Tyler Durden, played by Pitt, and becomes embroiled in a relationship with him and a dissolute woman, Marla Singer, played by Bonham Carter.&#xA;&#xA;Palahniuk's novel was optioned by 20th Century Fox producer Laura Ziskin, who hired Jim Uhls to write the film adaptation. Fincher was one of four directors the producers considered and hired him because of his enthusiasm for the film. Fincher developed the script with Uhls and sought screenwriting advice from the cast and others in the film industry. The director and the cast compared the film to Rebel Without a Cause (1955) and The Graduate (1967). Fincher intended Fight Clubs violence to serve as a metaphor for the conflict between a generation of young people and the value system of advertising. The director copied the homoerotic overtones from Palahniuk's novel to make audiences uncomfortable and keep them from anticipating the twist ending.&#xA;&#xA;Studio executives did not like the film and they restructured Fincher's intended marketing campaign to try to reduce anticipated losses. Fight Club failed to meet the studio's expectations at the box office and received polarized reactions from critics. It was cited as one of the most controversial and talked-about films of 1999. However, the film later found commercial success with its DVD release, which established Fight Club as a cult film. Critical reception of Fight Club has since become more positive." rating="9" viewCount="2" year="1999" tagline="Mischief. Mayhem. Soap." thumb="/library/metadata/5915/thumb?t=1345086846" art="/library/metadata/5915/art?t=1345086846" duration="8340000" originallyAvailableAt="1999-09-10" addedAt="1345086805" updatedAt="1345086846">
			  <Media id="5330" duration="8348340" bitrate="9326" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5643/file.mkv" duration="8348340" file="\\GIMMICKY-SERVER\Videos\Movies\Fight Club.mkv" size="9732160729" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Cult"/>
			  <Writer tag="Jim Uhls"/>
			  <Director tag="David Fincher"/>
			  <Country tag="USA"/>
			  <Role tag="David Andrews"/>
			  <Role tag="Zach Grenier"/>
			  <Role tag="Richmond Arquette"/>
			</Video>
			<Video ratingKey="1444" key="/library/metadata/1444" studio="Walt Disney Pictures" type="movie" title="Finding Nemo" contentRating="G" summary="Finding Nemo is a 2003 American computer-animated comedy-drama film written and directed by Andrew Stanton, produced by Pixar Animation Studios, and released by Walt Disney Pictures. It tells the story of the overly protective clownfish Marlin (Albert Brooks) who, along with a regal tang named Dory (Ellen DeGeneres), searches for his abducted son Nemo (Alexander Gould) in Sydney Harbour. Along the way, Marlin learns to take risks and to let Nemo take care of himself. It is Pixar's fifth feature-length film, and its first movie to be released in cinemas in the northern hemisphere summer. &#xA;&#xA;The film received extremely positive reviews and won the Academy Award for Best Animated Feature. It was the second highest-grossing film of 2003, behind The Lord of the Rings: The Return of the King, earning a total of $868 million worldwide. Finding Nemo is also the best-selling DVD of all time, with over 40 million copies sold as of 2006, and was the highest-grossing G-rated film of all time, before Pixar's own Toy Story 3 overtook it. It is also the fifth highest-grossing animated film of all time and the 27th highest-grossing film of all time. &#xA;&#xA;In 2008, the American Film Institute named it the 10th greatest animated film ever made during their Top 10." rating="8.6" viewCount="2" year="2003" tagline="There are 3.7 trillion fish in the ocean. They're looking for one." thumb="/library/metadata/1444/thumb?t=1343952970" art="/library/metadata/1444/art?t=1343952970" duration="6000000" originallyAvailableAt="2003-05-30" addedAt="1343952933" updatedAt="1343952970">
			  <Media id="1316" duration="6035000" bitrate="3982" width="1920" height="1040" aspectRatio="1.85" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="1080" container="mp4" videoFrameRate="24p" optimizedForStreaming="1">
				<Part key="/library/parts/1534/file.mp4" duration="6035000" file="\\GIMMICKY-SERVER\Videos\Movies\Finding Nemo.mp4" size="3004453094" container="mp4" has64bitOffsets="0" optimizedForStreaming="1"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Writer tag="Andrew Stanton"/>
			  <Writer tag="Bob Peterson"/>
			  <Director tag="Lee Unkrich"/>
			  <Director tag="Andrew Stanton"/>
			  <Country tag="Australia"/>
			  <Role tag="Geoffrey Rush"/>
			  <Role tag="Barry Humphries"/>
			  <Role tag="John Ratzenberger"/>
			</Video>
			<Video ratingKey="2136" key="/library/metadata/2136" studio="Pixar" type="movie" title="For the Birds" contentRating="G" summary="For the Birds is an animated short film, produced by Pixar and released in 2000. It won the Academy Award for Best Animated Short Film in 2001. It was shown alongside a theatrical release of the 2001 Disney/Pixar feature film Monsters, Inc. It is also available on some home video versions of the film.&#xA;&#xA;This marks the first time John Lasseter served as an Executive Producer, after he directed Toy Story, A Bug's Life and Toy Story 2." rating="9.1" viewCount="2" year="2000" thumb="/library/metadata/2136/thumb?t=1344046583" art="/library/metadata/2136/art?t=1344046583" duration="180000" originallyAvailableAt="2000-06-30" addedAt="1344046552" updatedAt="1344046583">
			  <Media id="1950" duration="205248" bitrate="11421" width="1920" height="1036" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2263/file.mkv" duration="205248" file="\\GIMMICKY-SERVER\Videos\Movies\For the Birds (2000).mkv" size="293025368" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Director tag="Ralph Eggleston"/>
			  <Country tag="USA"/>
			  <Role tag="Ralph Eggleston"/>
			</Video>
			<Video ratingKey="2462" key="/library/metadata/2462" type="movie" title="The Galaxy Express 999: The Eternal Fantasy" titleSort="Galaxy Express 999: The Eternal Fantasy" summary="Based on the story by manga master Leiji Matsumoto (The Cockpit, Queen Emeraldas), the 55 minute featurette picks up one year after the events of Galaxy Express 999 in which a young boy named Tetsuro and his motherly companion Matel worked to rid the universe on the Mechanized Empire who had taken over Earth." viewCount="1" year="1998" thumb="/library/metadata/2462/thumb?t=1344057370" art="/library/metadata/2462/art?t=1344057370" duration="3600000" originallyAvailableAt="1998-03-07" addedAt="1344057350" updatedAt="1344057370">
			  <Media id="2247" duration="3266976" bitrate="4643" width="1280" height="720" aspectRatio="1.78" audioChannels="4" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2560/file.mkv" duration="3266976" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Galaxy Express 999 Eternal Fantasy (1998).mkv" size="1896350740" container="mkv"/>
			  </Media>
			  <Genre tag="Animation"/>
			  <Genre tag="Science Fiction"/>
			  <Director tag="Kônosuke Uda"/>
			</Video>
			<Video ratingKey="2461" key="/library/metadata/2461" studio="Toei Animation Company" type="movie" title="Galaxy Express 999: The Signature Edition" summary="In the future, one can achieve immortality by obtaining a mechanized body. Orphaned, young Tetsuro hitches a ride on the space train Galaxy Express 999 in the hope of obtaining a cyborg body to avenge his mother's death. Along the way, he meets Matael, who is the spitting image of his dead mother." viewCount="1" year="1979" thumb="/library/metadata/2461/thumb?t=1344057370" art="/library/metadata/2461/art?t=1344057370" duration="7680000" originallyAvailableAt="1979-08-04" addedAt="1344057350" updatedAt="1344057370">
			  <Media id="2246" duration="7687680" bitrate="4643" width="1280" height="720" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2559/file.mkv" duration="7687680" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Galaxy Express 999 (1979).mkv" size="4462304219" container="mkv"/>
			  </Media>
			  <Genre tag="Animation"/>
			  <Genre tag="Science Fiction"/>
			  <Director tag="Rintaro"/>
			  <Role tag="Masako Nozawa"/>
			  <Role tag="Masako Ikeda"/>
			</Video>
			<Video ratingKey="164" key="/library/metadata/164" studio="Studio4ºC" type="movie" title="Genius Party" summary="Genius Party is an anthology of short animated films from Studio 4°C released on July 7, 2007.&#xA;&#xA;A sequel called Genius Party Beyond was released on February 15, 2008, and includes most of the films which were finished but not included in the original Genius Party." viewCount="1" year="2011" thumb="/library/metadata/164/thumb?t=1343790513" art="/library/metadata/164/art?t=1343790513" duration="900000" addedAt="1343790506" updatedAt="1343790513">
			  <Media id="154" duration="5905485" bitrate="1583" width="720" height="480" aspectRatio="1.66" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="480" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/154/file.mkv" duration="338964" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt1.mkv" size="137789458" container="mkv"/>
				<Part key="/library/parts/155/file.mkv" duration="1173339" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt2.mkv" size="331807963" container="mkv"/>
				<Part key="/library/parts/156/file.mkv" duration="644561" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt3.mkv" size="148835612" container="mkv"/>
				<Part key="/library/parts/157/file.mkv" duration="819652" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt4.mkv" size="145500562" container="mkv"/>
				<Part key="/library/parts/158/file.mkv" duration="1137345" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt5.mkv" size="476880829" container="mkv"/>
				<Part key="/library/parts/159/file.mkv" duration="907574" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt6.mkv" size="195126363" container="mkv"/>
				<Part key="/library/parts/160/file.mkv" duration="884050" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party\Genius Party - pt7.mkv" size="174942868" container="mkv"/>
			  </Media>
			  <Genre tag="Short Film"/>
			  <Genre tag="Japanese Movies"/>
			  <Director tag="Kazuto Nakazawa"/>
			  <Director tag="Shinichiro Watanabe"/>
			  <Director tag="Mahiro Maeda"/>
			  <Country tag="Japan"/>
			</Video>
			<Video ratingKey="165" key="/library/metadata/165" type="movie" title="Genius Party Beyond" summary="Genius Party is an anthology of short animated films from Studio 4°C released on July 7, 2007.&#xA;&#xA;A sequel called Genius Party Beyond was released on February 15, 2008, and includes most of the films which were finished but not included in the original Genius Party." viewCount="1" year="2008" thumb="/library/metadata/165/thumb?t=1343790634" art="/library/metadata/165/art?t=1343790634" duration="4790029" addedAt="1343790631" updatedAt="1343790634">
			  <Media id="155" duration="4790029" bitrate="895" width="720" height="480" aspectRatio="1.66" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="480" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/161/file.mkv" duration="869828" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party Beyond\Genius Party Beyond - pt1.mkv" size="227170957" container="mkv"/>
				<Part key="/library/parts/162/file.mkv" duration="874880" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party Beyond\Genius Party Beyond - pt2.mkv" size="213210579" container="mkv"/>
				<Part key="/library/parts/163/file.mkv" duration="805440" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party Beyond\Genius Party Beyond - pt3.mkv" size="249764463" container="mkv"/>
				<Part key="/library/parts/164/file.mkv" duration="806240" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party Beyond\Genius Party Beyond - pt4.mkv" size="134713637" container="mkv"/>
				<Part key="/library/parts/165/file.mkv" duration="1186561" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party Beyond\Genius Party Beyond - pt5.mkv" size="258769761" container="mkv"/>
				<Part key="/library/parts/166/file.mkv" duration="247080" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Genius Party Beyond\Genius Party Beyond - pt6.mkv" size="27665077" container="mkv"/>
			  </Media>
			</Video>
			<Video ratingKey="2137" key="/library/metadata/2137" studio="Pixar" type="movie" title="Geri's Game" summary="Geri's Game is an animated short film made by Pixar in 1997, written and directed by Jan Pinkava. It was the first Pixar short created after Toy Story, the previous short being Knick Knack in 1989. Geri's Game has a five-minute duration.&#xA;&#xA;The film won an Academy Award for Best Animated Short Film in 1998." viewCount="2" year="1997" thumb="/library/metadata/2137/thumb?t=1344046580" art="/library/metadata/2137/art?t=1344046580" duration="300000" originallyAvailableAt="1997-11-25" addedAt="1344046552" updatedAt="1344046580">
			  <Media id="1951" duration="293335" bitrate="4697" width="1796" height="1080" aspectRatio="1.66" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2264/file.mkv" duration="293335" file="\\GIMMICKY-SERVER\Videos\Movies\Geri's Game (1997).mkv" size="172256584" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Director tag="Jan Pinkava"/>
			  <Country tag="USA"/>
			  <Role tag="Bob Peterson"/>
			</Video>
			<Video ratingKey="1962" key="/library/metadata/1962" studio="Madhouse" type="movie" title="The Girl Who Leapt Through Time" titleSort="Girl Who Leapt Through Time" summary="A young high-school girl, Makoto Konno, discovers that she has the ability to &quot;leap&quot; through time to the past after she avoids a fatal train accident. &quot;The Girl Who Leapt Through Time&quot; is a sequel to the novel by Yasutaka Tsutsui of the same name." rating="8.9" viewCount="2" year="2006" thumb="/library/metadata/1962/thumb?t=1343974743" art="/library/metadata/1962/art?t=1343974743" duration="5880000" originallyAvailableAt="2006-07-15" addedAt="1343974717" updatedAt="1343974743">
			  <Media id="1792" duration="5904427" bitrate="6363" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2105/file.mkv" duration="5904427" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\The Girl Who Leapt Through Time.mkv" size="4696487167" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Coming of age"/>
			  <Writer tag="Okudera Satoko"/>
			  <Director tag="Mamoru Hosoda"/>
			  <Country tag="Japan"/>
			  <Role tag="Tomoyo Harada"/>
			  <Role tag="Riisa Naka"/>
			  <Role tag="Mitsuki Tanimura"/>
			</Video>
			<Video ratingKey="1452" key="/library/metadata/1452" studio="ITC Entertainment" type="movie" title="The Great Muppet Caper" titleSort="Great Muppet Caper" contentRating="G" summary="The Great Muppet Caper is a 1981 mystery family film directed by Jim Henson. It is the second of a series of live-action musical feature films, starring Jim Henson's Muppets. This film was produced by Henson Associates and ITC Entertainment, released by Universal Pictures, and premiered on June 26, 1981. It is also the only Muppet movie directed by Henson. Shot in England, the film was released shortly after the final season of The Muppet Show." viewCount="1" year="1981" thumb="/library/metadata/1452/thumb?t=1343952962" art="/library/metadata/1452/art?t=1343952962" duration="5880000" originallyAvailableAt="1981-06-26" addedAt="1343952934" updatedAt="1343952962">
			  <Media id="1324" duration="5604600" bitrate="1047" width="576" height="304" aspectRatio="1.85" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="PAL">
				<Part key="/library/parts/1542/file.avi" duration="5604600" file="\\GIMMICKY-SERVER\Videos\Movies\The Great Muppet Caper.avi" size="733661184" container="avi"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Mystery"/>
			  <Writer tag="Jerry Juhl"/>
			  <Writer tag="Jay Tarses"/>
			  <Director tag="Jim Henson"/>
			  <Country tag="United Kingdom"/>
			  <Role tag="Jack Warden"/>
			  <Role tag="Diana Rigg"/>
			  <Role tag="Steve Whitmire"/>
			</Video>
			<Video ratingKey="5916" key="/library/metadata/5916" studio="Relativity Media" type="movie" title="Hancock" contentRating="PG-13" summary="Hancock is a 2008 American action drama-comedy superhero film directed by Peter Berg and starring Will Smith, Jason Bateman, and Charlize Theron. It tells the story of a vigilante superhero, John Hancock (Smith) from Los Angeles whose reckless actions routinely cost the city millions of dollars. Eventually one person he saves, Ray Embrey (Bateman), makes it his mission to change Hancock's public image for the better. &#xA;&#xA;The story was originally written by Vincent Ngo in 1996. It languished in development hell for years and had various directors attached, including Tony Scott, Michael Mann, Jonathan Mostow, and Gabriele Muccino before going into production in 2007. Hancock was filmed in Los Angeles with a production budget of $150 million.&#xA;&#xA;In the United States, the film was rated PG-13 by the Motion Picture Association of America after changes were made at the organization's request in order to avoid a &quot;restricted&quot; (R) rating, which it had received twice before. The film was presented and widely released on July 2, 2008 in the United States and the United Kingdom by Columbia Pictures. Hancock grossed more than $620 million in theaters worldwide while given mixed critical consensus." rating="6.9" viewCount="1" year="2008" tagline="There are heroes. There are superheroes. And then there's Hancock." thumb="/library/metadata/5916/thumb?t=1345087529" art="/library/metadata/5916/art?t=1345087529" duration="5520000" originallyAvailableAt="2008-07-02" addedAt="1345087400" updatedAt="1345087529">
			  <Media id="5331" duration="5533487" bitrate="4881" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5644/file.mkv" duration="5533487" file="\\GIMMICKY-SERVER\Videos\Movies\Hancock.mkv" size="3376519100" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Vince Gilligan"/>
			  <Writer tag="Vy Vincent Ngo"/>
			  <Director tag="Peter Berg"/>
			  <Country tag="USA"/>
			  <Role tag="Charlize Theron"/>
			  <Role tag="Will Smith"/>
			  <Role tag="Jason Bateman"/>
			</Video>
			<Video ratingKey="5908" key="/library/metadata/5908" studio="Warner Bros. Entertainment" type="movie" title="I Am Legend" contentRating="PG-13" summary="I Am Legend is a 2007 American post-apocalyptic science fiction thriller film directed by Francis Lawrence and starring Will Smith. It is the third feature film adaptation of Richard Matheson's 1954 novel of the same name, following 1964's The Last Man on Earth and 1971's The Omega Man. Smith plays virologist Robert Neville, who is immune to a man-made virus originally created to cure cancer. He works to create a remedy while defending himself against humans mutated by the virus.&#xA;&#xA;Warner Bros. began developing I Am Legend in 1994, and various actors and directors were attached to the project, though production was delayed due to budgetary concerns related to the script. Production began in 2006 in New York City, filming mainly on location in the city, including a $5 million scene at the Brooklyn Bridge, the most expensive scene ever filmed in the city at the time.&#xA;&#xA;I Am Legend was released on December 14, 2007 in the United States and Canada, and opened to the largest ever box office (not counting for inflation) for a non-Christmas film released in the U.S. in December. The film was the seventh-highest grossing film of 2007, earning $256 million domestically and $329 million internationally, for a total of $585 million." rating="8" viewCount="1" year="2007" tagline="The Last Man on Earth is Not Alone." thumb="/library/metadata/5908/thumb?t=1344797427" art="/library/metadata/5908/art?t=1344797427" duration="6060000" originallyAvailableAt="2007-12-12" addedAt="1344797286" updatedAt="1344797427">
			  <Media id="5323" duration="6031609" bitrate="4678" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5636/file.mkv" duration="6031609" file="\\GIMMICKY-SERVER\Videos\Movies\I Am Legend.mkv" size="3527654978" container="mkv"/>
			  </Media>
			  <Genre tag="Disaster"/>
			  <Genre tag="Thriller"/>
			  <Writer tag="Akiva Goldsman"/>
			  <Writer tag="John William Corrington"/>
			  <Director tag="Francis Lawrence"/>
			  <Country tag="USA"/>
			  <Role tag="Will Smith"/>
			  <Role tag="Alice Braga"/>
			  <Role tag="Salli Richardson"/>
			</Video>
			<Video ratingKey="5942" key="/library/metadata/5942" studio="Syncopy Films" type="movie" title="Inception" contentRating="PG-13" summary="Inception is a 2010 American science fiction/action heist film written, co-produced, and directed by Christopher Nolan. The film stars a large ensemble cast that includes Leonardo DiCaprio, Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Ellen Page, Tom Hardy, Dileep Rao, Cillian Murphy, Tom Berenger, and Michael Caine. DiCaprio plays Dom Cobb, a thief who commits corporate espionage by infiltrating the subconscious of his targets. He is offered a chance to regain his old life as payment for a task considered to be impossible: &quot;inception&quot;, the implantation of another person's idea into a target's subconscious.&#xA;&#xA;In 2001, Nolan wrote an 80-page treatment about &quot;dream stealers&quot; and presented the idea to Warner Bros. in a story envisioned as a horror film inspired by lucid dreaming. Feeling he needed to have more experience with large-scale film production, Nolan retired the project and instead worked on Batman Begins (2005), The Prestige (2006), and The Dark Knight (2008). He spent six months polishing the script before Warner Bros. purchased it in February 2009. Inception was filmed in six countries and four continents, beginning in Tokyo on June 19, 2009, and finishing in Canada on November 22, 2009. Its official budget was US$160 million, a cost which was split between Warner Bros and Legendary Pictures. Nolan's reputation and success with The Dark Knight helped secure the film's $100 million in advertising expenditure, with most of the publicity involving viral marketing. &#xA;&#xA;Inception premiered in London on July 8, 2010, and was released in both conventional and IMAX theaters on July 16, 2010. A box office success, Inception has grossed over $800 million worldwide and is thus currently one of the highest-grossing films of all time. The home video market also had strong results, with $68 million in DVD sales. Inception has received wide critical acclaim and numerous critics have praised its originality, cast, score, and visual effects. It won Academy Awards for Best Visual Effects, Best Sound Editing, Best Sound Mixing, and Best Cinematography, and was also nominated for four more: Best Picture, Best Original Screenplay, Best Original Score, and Best Art Direction." rating="8.7" viewCount="1" year="2010" tagline="Your mind is the scene of the crime." thumb="/library/metadata/5942/thumb?t=1345323203" art="/library/metadata/5942/art?t=1345323203" duration="8520000" originallyAvailableAt="2010-07-08" addedAt="1345323143" updatedAt="1345323203">
			  <Media id="5356" duration="11422036" bitrate="12695" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5669/file.mkv" duration="11422036" file="\\GIMMICKY-SERVER\Videos\Movies\Inception.mkv" size="18126292499" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Action"/>
			  <Writer tag="Christopher Nolan"/>
			  <Director tag="Christopher Nolan"/>
			  <Country tag="United Kingdom"/>
			  <Role tag="Leonardo DiCaprio"/>
			  <Role tag="Cillian Murphy"/>
			  <Role tag="Ellen Page"/>
			</Video>
			<Video ratingKey="5837" key="/library/metadata/5837" studio="Pixar" type="movie" title="The Incredibles" titleSort="Incredibles" contentRating="PG" summary="The Incredibles is a 2004 American computer-animated superhero comedy film produced by Pixar Animation Studios and directed by Brad Bird. The story follows a family of superheroes living a quiet suburban life, forced to hide their powers. When father Bob Parr's yearning for his glory days and desire to help people drags him into battle with an evil villain and his killer robot, the entire Parr family is forced into action to save the world.&#xA;&#xA;Bird, who was Pixar's first outside director, developed the film as an extension of 1960s comic books and spy films from his boyhood and personal family life. He pitched the film to Pixar after the box office disappointment of his first feature, The Iron Giant (1999), and carried over much of its staff to develop The Incredibles. The animation team was tasked with animating an all-human cast, which required creating new technology to animate detailed human anatomy, clothing and realistic skin and hair. Michael Giacchino composed the orchestral score of The Incredibles.&#xA;&#xA;The film was released by Walt Disney Pictures on November 5, 2004 and performed highly at the box office, grossing $631,442,092 during its original theatrical run. The Incredibles was met with high critical acclaim, garnering high marks from professional critics and audiences, and provoking commentary on its themes. Many critics called it the best film of 2004, receiving the 2004 Annie Award for Best Animated Feature, along with two Academy Awards. It became the first entirely animated film to win the prestigious Hugo Award for Best Dramatic Presentation." rating="8.6" viewCount="1" year="2004" tagline="Save The Day." thumb="/library/metadata/5837/thumb?t=1344655937" art="/library/metadata/5837/art?t=1344655937" duration="6900000" originallyAvailableAt="2004-10-27" addedAt="1344387840" updatedAt="1344655937">
			  <Media id="5259" duration="6925752" bitrate="7240" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5572/file.mkv" duration="6925752" file="\\GIMMICKY-SERVER\Videos\Movies\The Incredibles.mkv" size="6268477267" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Writer tag="Brad Bird"/>
			  <Director tag="Brad Bird"/>
			  <Country tag="USA"/>
			  <Role tag="John Ratzenberger"/>
			  <Role tag="Elizabeth Peña"/>
			  <Role tag="Kimberly Adair Clark"/>
			</Video>
			<Video ratingKey="2463" key="/library/metadata/2463" studio="Virgin Records" type="movie" title="Interstella 5555: The 5tory of the 5ecret 5tar 5ystem" summary="Interstella 5555: The 5tory of the 5ecret 5tar 5ystem|インターステラ5555|Intāsutera Fō Faibu}} is a feature-length Japanese animated musical film originally released on December 1, 2003. The film is the visual realization of Discovery, an album by Daft Punk. Each track from the album has been animated as an episode in the story of the abduction and rescue of an interstellar pop band. The film was produced by Daft Punk, Cédric Hervet and Emmanuel de Buretel along with Toei Animation, under the supervision of Leiji Matsumoto. The film has no dialogueOnly Shep, Earl and Octave speak in the film. Shep sings &quot;Digital Love&quot;; Octave sings &quot;One More Time&quot; and appears to convey information in &quot;Short Circuit&quot;; Earl talks to Stella during &quot;Crescendolls&quot;, but is unheard. and minimal sound effects." viewCount="1" year="2003" thumb="/library/metadata/2463/thumb?t=1344057374" art="/library/metadata/2463/art?t=1344057374" duration="4080000" originallyAvailableAt="2003-12-01" addedAt="1344057350" updatedAt="1344057374">
			  <Media id="2248" duration="3911863" bitrate="1401" width="576" height="432" aspectRatio="1.33" audioChannels="2" audioCodec="mp3" videoCodec="msmpeg4" videoResolution="sd" container="avi" videoFrameRate="PAL">
				<Part key="/library/parts/2561/file.avi" duration="3911863" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Interstella 5555.avi" size="685348864" container="avi"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Dance"/>
			  <Writer tag="Guy-Manuel de Homem-Christo"/>
			  <Writer tag="Cédric Hervet"/>
			  <Director tag="Daft Punk"/>
			  <Director tag="Kazuhisa Takenouchi"/>
			  <Director tag="Leiji Matsumoto"/>
			  <Country tag="Japan"/>
			</Video>
			<Video ratingKey="5910" key="/library/metadata/5910" type="movie" title="Interview With the Vampire" summary="" viewCount="1" thumb="/library/metadata/5910/thumb?t=1344797577" art="/library/metadata/5910/art?t=1344797577" duration="7353305" addedAt="1344797577">
			  <Media id="5325" duration="7353305" bitrate="4726" width="1280" height="752" aspectRatio="1.66" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5638/file.mkv" duration="7353305" file="\\GIMMICKY-SERVER\Videos\Movies\Interview With The Vampire.mkv" size="4344661259" container="mkv"/>
			  </Media>
			</Video>
			<Video ratingKey="5839" key="/library/metadata/5839" type="movie" title="Inukami!" summary="" viewCount="1" year="2006" thumb="/library/metadata/5839/thumb?t=1344388209" art="/library/metadata/5839/art?t=1344388209" duration="1594208" addedAt="1344388194" updatedAt="1344388209">
			  <Media id="5261" duration="1594208" bitrate="1331" width="880" height="496" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="mpeg4" videoResolution="576" container="avi" videoFrameRate="24p">
				<Part key="/library/parts/5574/file.avi" duration="1594208" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Inukami! The Movie.avi" size="265363076" container="avi"/>
			  </Media>
			</Video>
			<Video ratingKey="1445" key="/library/metadata/1445" studio="The Jim Henson Company" type="movie" title="It's a Very Merry Muppet Christmas Movie" contentRating="G" summary="It's A Very Merry Muppet Christmas Movie is a 2002 television film that aired on NBC on November 29, 2002. The film was directed by Kirk Thatcher, written by Tom Martin and Jim Lewis and stars the Muppets and was filmed at Lionsgate Studios. The film revolves around a plot similar to &quot;It's A Wonderful Life&quot; and features Whoopi Goldberg, David Arquette and the cast of &quot;Scrubs&quot;. The film is rated PG for Thematic Elements, making it one of two Muppet films to have the rating, the other being the 2011 film The Muppets. Director Kirk R. Thatcher later directed The Muppets' Wizard of Oz and A Muppets Christmas: Letters to Santa.&#xA;&#xA;The film contains an original song, &quot;Everyone Matters&quot;, performed by Kermit and Gonzo as part of Kermit's dream, and then reprised at the end. It was nominated for an Emmy Award. The film also makes reference to the Muppet classic song The Rainbow Connection, featuring a statue of Kermit in a park, erected in dedication &quot;for the lovers, the dreamers and you&quot;." viewCount="1" year="2002" thumb="/library/metadata/1445/thumb?t=1343952959" art="/library/metadata/1445/art?t=1343952959" duration="6000000" originallyAvailableAt="2002-11-29" addedAt="1343952933" updatedAt="1343952959">
			  <Media id="1317" duration="5081352" bitrate="1153" width="640" height="352" aspectRatio="1.85" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="PAL">
				<Part key="/library/parts/1535/file.avi" duration="5081352" file="\\GIMMICKY-SERVER\Videos\Movies\It's a Very Muppet Christmas Movie.avi" size="732731392" container="avi"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Children's Fantasy"/>
			  <Director tag="Kirk R. Thatcher"/>
			  <Country tag="USA"/>
			  <Role tag="Joan Cusack"/>
			  <Role tag="Whoopi Goldberg"/>
			  <Role tag="David Arquette"/>
			</Video>
			<Video ratingKey="2138" key="/library/metadata/2138" studio="Pixar" type="movie" title="Jack-Jack Attack" contentRating="G" summary="Jack-Jack Attack is a 2005 short film produced by Pixar based on their film The Incredibles. Unlike many of their previous shorts, it was not given a theatrical release, but was included on the DVD release of the film. The idea for this short came from an idea for a scene originally considered for inclusion in The Incredibles film; it was cut from the feature and subsequently expanded into this short. The short is based on the youngest member of the superhero Parr family: the baby, Jack-Jack. From The Incredibles, the audience knows that Jack-Jack's babysitter Kari McKeen started experiencing difficulty with him shortly after hanging up the phone with his mother, Helen Parr (also known as Elastigirl or Mrs. Incredible)." rating="8.3" viewCount="1" year="2005" thumb="/library/metadata/2138/thumb?t=1344046583" art="/library/metadata/2138/art?t=1344046583" duration="300000" originallyAvailableAt="2005-03-15" addedAt="1344046552" updatedAt="1344046583">
			  <Media id="1952" duration="284288" bitrate="7131" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2265/file.mkv" duration="284288" file="\\GIMMICKY-SERVER\Videos\Movies\Jack-Jack Attack (2005).mkv" size="253434130" container="mkv"/>
			  </Media>
			  <Genre tag="Computer Animation"/>
			  <Genre tag="Short Film"/>
			  <Writer tag="Rob Gibbs"/>
			  <Writer tag="Teddy Newton"/>
			  <Director tag="Brad Bird"/>
			  <Country tag="USA"/>
			  <Role tag="Bud Luckey"/>
			  <Role tag="Eli Fucile"/>
			  <Role tag="Jason Lee"/>
			</Video>
			<Video ratingKey="244" key="/library/metadata/244" type="movie" title="K-On!" summary="Graduation draws near for Yui, Ritsu, Mio and Tsumugi, the four 3rd-year students of the Light Music Club. They, together with Azusa, decide to go on a post-graduation trip. Their destination, decided by lot, is London!" viewCount="1" year="2011" thumb="/library/metadata/244/thumb?t=1343793207" art="/library/metadata/244/art?t=1343793207" duration="6588650" addedAt="1343793188" updatedAt="1343793207">
			  <Media id="226" duration="6588650" bitrate="5108" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/279/file.mkv" duration="6588650" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\K-ON! Movie.mkv" size="4207180782" container="mkv"/>
			  </Media>
			</Video>
			<Video ratingKey="1446" key="/library/metadata/1446" studio="Sony Pictures Home Entertainment" type="movie" title="Kermit's Swamp Years" contentRating="G" summary="Kermit's Swamp Years is a live-action, direct-to-video film starring Jim Henson's Muppets. It was produced in 2002 and is a prequel of sorts to The Muppet Movie, telling the story of Kermit the Frog's early life." viewCount="1" year="2002" tagline="His true story, warts and all." thumb="/library/metadata/1446/thumb?t=1343952965" art="/library/metadata/1446/art?t=1343952965" duration="4920000" originallyAvailableAt="2002-09-03" addedAt="1343952933" updatedAt="1343952965">
			  <Media id="1318" duration="4918920" bitrate="1194" width="560" height="320" aspectRatio="1.78" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="24p">
				<Part key="/library/parts/1536/file.avi" duration="4918920" file="\\GIMMICKY-SERVER\Videos\Movies\Kermit's Swamp Years.avi" size="734435328" container="avi"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Adventure"/>
			  <Director tag="David Gumpel"/>
			  <Director tag="Jim Lewis"/>
			  <Country tag="USA"/>
			  <Role tag="Bill Barretta"/>
			  <Role tag="Steve Whitmire"/>
			  <Role tag="Dave Goelz"/>
			</Video>
			<Video ratingKey="5" key="/library/metadata/5" type="movie" title="King of Thorn" summary="A mysterious virus, nicknamed Medusa, is spreading around the world, turning its victims into stone. Given the impossibility of finding an immediate cure, a corporation offers to cryo-preserve a select group of patients until they come up with a solution. Kasumi, one of the chosen ones, wakes up after being asleep for an unknown period of time and her awakening, not a bed of roses, is a bed of thorns, and happens in the midst of total chaos where monstrous creatures lie in wait all around." year="2009" thumb="/library/metadata/5/thumb?t=1343788204" art="/library/metadata/5/art?t=1343788204" duration="7200000" addedAt="1343788168" updatedAt="1343788204">
			  <Media id="5" duration="6532372" bitrate="5905" width="1912" height="1032" aspectRatio="1.85" audioChannels="6" audioCodec="vorbis" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5/file.mkv" duration="6532372" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\King of Thorn.mkv" size="4821729647" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Kazuyoshi Katayama"/>
			  <Writer tag="Hiroshi Yamaguchi"/>
			  <Director tag="Kazuyoshi Katayama"/>
			  <Country tag="Japan"/>
			  <Role tag="Toshiyuki Morikawa"/>
			  <Role tag="Shinichiro Miki"/>
			  <Role tag="Akiko Yajima"/>
			</Video>
			<Video ratingKey="5914" key="/library/metadata/5914" studio="Escape Artists" type="movie" title="A Knight's Tale" titleSort="Knight's Tale" contentRating="PG-13" summary="A Knight's Tale is a 2001 romantic adventure comedy film written, directed, and produced by Brian Helgeland. The film stars Heath Ledger, Shannyn Sossamon, Mark Addy, Alan Tudyk, Rufus Sewell, Paul Bettany as Geoffrey Chaucer, and James Purefoy as Sir Thomas Colville/Edward, the Black Prince.&#xA;&#xA;The film follows the story of William Thatcher, a peasant masquerading as a knight, along with his companions in the world of medieval jousting. William poses as a knight and competes in tournaments, winning accolades and acquiring friendships with such historical figures as Edward, the Black Prince of Wales and Geoffrey Chaucer.&#xA;&#xA;The film takes its title from Chaucer's &quot;The Knight's Tale&quot; in his Canterbury Tales, though the plot is not especially similar. Garnering $117,487,473 with a budget of $41 million, it became successful at the worldwide box office." rating="7.6" viewOffset="1112240" viewCount="1" year="2001" tagline="He didn't make the rules. He was born to break them." thumb="/library/metadata/5914/thumb?t=1345086487" art="/library/metadata/5914/art?t=1345086487" duration="7920000" originallyAvailableAt="2001-03-08" addedAt="1345086413" updatedAt="1345086487">
			  <Media id="5329" duration="7928921" bitrate="7042" width="1280" height="544" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5642/file.mkv" duration="7928921" file="\\GIMMICKY-SERVER\Videos\Movies\A Knight's Tale.mkv" size="6979525075" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Brian Helgeland"/>
			  <Director tag="Brian Helgeland"/>
			  <Country tag="USA"/>
			  <Role tag="Laura Fraser"/>
			  <Role tag="Mark Addy"/>
			  <Role tag="Alan Tudyk"/>
			</Video>
			<Video ratingKey="5936" key="/library/metadata/5936" studio="TriStar Pictures" type="movie" title="Labyrinth" contentRating="PG" summary="Labyrinth is a 1986 British-American fantasy film directed by Jim Henson, produced by George Lucas and based upon conceptual designs by Brian Froud. The film stars David Bowie as Jareth and Jennifer Connelly as Sarah. The plot revolves around Sarah's quest to reach the center of an enormous otherworldly maze to rescue her infant brother Toby, who has been kidnapped by Jareth, the Goblin King. With the exception of Bowie and Connelly, most of the significant characters in the film are played by puppets produced by Jim Henson's Creature Shop.&#xA;&#xA;Labyrinth started as a collaboration between Jim Henson and Brian Froud, with ideas for the film first being discussed between them following a screening of their previous collaboration, The Dark Crystal. Terry Jones from Monty Python wrote the first draft of the film's script early in 1984, drawing on Brian Froud's sketches for inspiration. Various other script-writers, including Laura Phillips (who had previously written several episodes of Fraggle Rock), George Lucas, and Elaine May, subsequently re-wrote and made additions to the screenplay, although Jones received the film's sole screen-writing credit. Labyrinth was shot on location in Upper Nyack, Piermont and Haverstraw in New York, and at Elstree Studios and West Wycombe Park in the United Kingdom.&#xA;&#xA;The New York Times reported that Labyrinth had a budget of $25 million. Labyrinth was a box office disappointment and only grossed $12,729,917 during its U.S theatrical run. The commercial failure of the film demoralized Henson to the extent that his son Brian Henson remembered the time of the film's release as one of the most difficult periods of his father's career. It would be the last feature film directed by Henson before his death in 1990.&#xA;&#xA;Although it was met with a mixed critical response upon its original release in the summer of 1986, Labyrinth has since gained a strong cult following and tributes to it have been featured in magazines such as Empire and Total Film. A four-volume manga sequel to the film, entitled Return to Labyrinth, was published by Tokyopop between 2006 and 2010. In 2012 Archaia Studios Press announced they were developing a graphic novel prequel to the film." rating="8.5" viewCount="1" year="1986" tagline="Jim Henson, George Lucas and David Bowie take you into a dazzling world of fantasy and adventure." thumb="/library/metadata/5936/thumb?t=1345272769" art="/library/metadata/5936/art?t=1345272769" duration="6060000" originallyAvailableAt="1986-06-27" addedAt="1345272743" updatedAt="1345272769">
			  <Media id="5350" duration="6063016" bitrate="11077" width="1280" height="544" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5663/file.mkv" duration="6063016" file="\\GIMMICKY-SERVER\Videos\Movies\Labyrinth.mkv" size="8395205320" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Coming of age"/>
			  <Writer tag="Terry Jones"/>
			  <Director tag="Jim Henson"/>
			  <Country tag="United Kingdom"/>
			  <Role tag="Timothy Bateson"/>
			  <Role tag="Kevin Clash"/>
			  <Role tag="Danny John-Jules"/>
			</Video>
			<Video ratingKey="5933" key="/library/metadata/5933" studio="Warner Bros. Entertainment" type="movie" title="The Last Samurai" titleSort="Last Samurai" contentRating="R" summary="The Last Samurai is a 2003 American epic drama film directed and co-produced by Edward Zwick, who also co-wrote the screenplay with writer John Logan. The film stars Tom Cruise, who also co-produced, as well as Ken Watanabe, Shin Koyamada, Tony Goldwyn, Hiroyuki Sanada, Timothy Spall and Billy Connolly. Inspired by a project by Vincent Ward, it interested Edward Zwick and Ward later served as executive producer. The film production went ahead with Zwick and was shot in Ward’s native New Zealand. &#xA;&#xA;Cruise portrays American officer Nathan Algren, whose personal and emotional conflicts bring him into contact with samurai warriors in the wake of the Meiji Restoration in 19th Century Japan. The film's plot was inspired by the 1877 Satsuma Rebellion led by Saigō Takamori, and on the westernization of Japan by colonial powers, though this is largely attributed to the United States in the film for American audiences. It is also based on the stories of Jules Brunet, a French army captain who fought alongside Enomoto Takeaki in the earlier Boshin War and Frederick Townsend Ward, an American mercenary who helped Westernize the Chinese army by forming the Ever Victorious Army.&#xA;&#xA;The Last Samurai was well received upon release, with a worldwide box office of $456 million. It was nominated for several awards, including the Academy Awards, the Golden Globes and the National Board of Review." rating="8.1" viewCount="1" year="2003" tagline="In the face of an enemy, in the Heart of One Man, Lies the Soul of a Warrior." thumb="/library/metadata/5933/thumb?t=1345171992" art="/library/metadata/5933/art?t=1345171992" duration="9180000" originallyAvailableAt="2003-11-22" addedAt="1345171952" updatedAt="1345171992">
			  <Media id="5347" duration="9251534" bitrate="4599" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5660/file.mkv" duration="9251534" file="\\GIMMICKY-SERVER\Videos\Movies\The Last Samurai.mkv" size="5319608912" container="mkv"/>
			  </Media>
			  <Genre tag="Action"/>
			  <Genre tag="Action/Adventure"/>
			  <Writer tag="Edward Zwick"/>
			  <Writer tag="Marshall Herskovitz"/>
			  <Director tag="Edward Zwick"/>
			  <Country tag="USA"/>
			  <Role tag="Billy Connolly"/>
			  <Role tag="Shin Koyamada"/>
			  <Role tag="Timothy Spall"/>
			</Video>
			<Video ratingKey="2140" key="/library/metadata/2140" studio="Pixar" type="movie" title="Lifted" contentRating="G" summary="When an overconfident teen alien gets behind the controls of a spaceship, he must attempt to abduct a slumbering farmer under the watchful eye of a critical instructor. But abducting humans requires precision and a gentle touch, and within a few missteps it's painfully clear why more humans don't go missing every year." rating="9.6" viewCount="1" year="2006" tagline="Failure is an option." thumb="/library/metadata/2140/thumb?t=1344046594" art="/library/metadata/2140/art?t=1344046594" duration="300000" originallyAvailableAt="2006-12-29" addedAt="1344046553" updatedAt="1344046594">
			  <Media id="1954" duration="302304" bitrate="3964" width="1920" height="1036" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2267/file.mkv" duration="302304" file="\\GIMMICKY-SERVER\Videos\Movies\Lifted (2006).mkv" size="149803583" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Writer tag="Gary Rydstrom"/>
			  <Director tag="Gary Rydstrom"/>
			  <Country tag="USA"/>
			</Video>
			<Video ratingKey="6" key="/library/metadata/6" type="movie" title="Loups=Garous" summary="Virtual reality. Murder. Werewolves. And teen girls! In a future where nothing is as it seems, can old legends come true? In the near future, humans will communicate almost exclusively through monitors, making real interaction a rarefied and weak occurrence for those living in a near totalitarian society. In this new world of communication, children are only allowed to interact personally on school grounds. So when a serial killer starts slaughtering junior high children the communication routes go under further surveillance. And despite all the safeguards put in place to avoid physical interaction, the killer's latest victim turns out to have been in contact with three young girls: Tsuzuki Mio, a certified prodigy; Makino Hazuki, a quiet but opinionated classmate; and Kouno Ayumi, her best friend. And as the girls get caught up in trying to quell curiosity under such terrorist scrutiny, Hatsuki learns that there is much more than meets the eye of their monitored communications." thumb="/library/metadata/6/thumb?t=1343788205" art="/library/metadata/6/art?t=1343788205" duration="5889151" addedAt="1343788168" updatedAt="1343788205">
			  <Media id="6" duration="5889151" bitrate="1525" width="1280" height="720" aspectRatio="1.78" audioChannels="2" audioCodec="aac" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/6/file.mkv" duration="5889151" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Loups=Garous.mkv" size="1122738382" container="mkv"/>
			  </Media>
			</Video>
			<Video ratingKey="2142" key="/library/metadata/2142" studio="Pixar" type="movie" title="Mater and the Ghostlight" summary="Mater and the Ghostlight is a 2006 Pixar computer-animated short created for the DVD of Cars, which was released on October 25, 2006 in Australia and in the United States on November 7, 2006. The short, set in the Cars world, tells a story of Mater being haunted by a mysterious blue light." viewCount="1" year="2006" thumb="/library/metadata/2142/thumb?t=1344046597" art="/library/metadata/2142/art?t=1344046597" duration="420000" originallyAvailableAt="2006-11-07" addedAt="1344046553" updatedAt="1344046597">
			  <Media id="1956" duration="429513" bitrate="8363" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2269/file.mkv" duration="429513" file="\\GIMMICKY-SERVER\Videos\Movies\Mater and the Ghostlight (2006).mkv" size="449012483" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Short Film"/>
			  <Director tag="John Lasseter"/>
			  <Director tag="Dan Scanlon"/>
			  <Country tag="USA"/>
			  <Role tag="Bonnie Hunt"/>
			  <Role tag="Larry the Cable Guy"/>
			  <Role tag="Paul Dooley"/>
			</Video>
			<Video ratingKey="5934" key="/library/metadata/5934" studio="Silver Pictures" type="movie" title="The Matrix" titleSort="Matrix" contentRating="R" summary="The Matrix is a 1999 American science fiction action film written and directed by Larry and Andy Wachowski. The film stars Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss, Joe Pantoliano, and Hugo Weaving, and was first released in the United States on, 1999. The success of the film led to the release of two feature film sequels, and the Matrix franchise was further expanded through the production of comic books, video games, and animated short films.&#xA;&#xA;The film depicts a future in which reality as perceived by most humans is actually a simulated reality or cyberspace created by sentient machines to pacify and subdue the human population, while their bodies' heat and electrical activity are used as an energy source. Upon learning this, computer programmer &quot;Neo&quot; is drawn into a rebellion against the machines, involving other people who have been freed from the &quot;dream world&quot; and into reality.&#xA;&#xA;The film contains many references to the cyberpunk and hacker subcultures; philosophical and religious ideas such as René Descartes' evil genius, the Allegory of the Cave, the brain-in-a-vat thought experiment; and homages to Alice's Adventures in Wonderland, Metropolis, ISBN 0-415-97868-8; ISBN 978-0-41597-868-2. Hong Kong action cinema, spaghetti westerns, dystopian fiction, M. C. Escher's work, and Japanese animation." rating="9.1" viewCount="1" year="1999" tagline="Reality is a thing of the past." thumb="/library/metadata/5934/thumb?t=1345171993" art="/library/metadata/5934/art?t=1345171993" duration="8160000" originallyAvailableAt="1999-03-31" addedAt="1345171952" updatedAt="1345171993">
			  <Media id="5348" duration="8177920" bitrate="7622" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5661/file.mkv" duration="8177920" file="\\GIMMICKY-SERVER\Videos\Movies\The Matrix.mkv" size="7791617258" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Action"/>
			  <Writer tag="Andy Wachowski"/>
			  <Writer tag="Larry Wachowski"/>
			  <Director tag="Andy Wachowski"/>
			  <Director tag="Larry Wachowski"/>
			  <Country tag="USA"/>
			  <Role tag="Anthony Ray Parker"/>
			  <Role tag="Matt Doran"/>
			  <Role tag="Marcus Chong"/>
			</Video>
			<Video ratingKey="2143" key="/library/metadata/2143" studio="Pixar" type="movie" title="Mike's New Car" contentRating="G" summary="Mike's New Car is a 2002 Pixar animated short comedy film, starring the two main characters from Monsters, Inc., Mike and Sulley. Directed by Pete Docter and Roger Gould, it is the first Pixar short to utilize dialogue and the first to take characters and situations from a previously established work.&#xA;&#xA;The short premiered on September 17, 2002, included in the DVD and VHS release of Monsters, Inc. It was nominated for a 2002 Academy Award for Best Animated Short Film." viewCount="1" year="2002" thumb="/library/metadata/2143/thumb?t=1344046610" art="/library/metadata/2143/art?t=1344046610" duration="240000" originallyAvailableAt="2002-05-24" addedAt="1344046553" updatedAt="1344046610">
			  <Media id="1957" duration="240288" bitrate="8047" width="1376" height="1036" aspectRatio="1.33" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2270/file.mkv" duration="240288" file="\\GIMMICKY-SERVER\Videos\Movies\Mike's New Car (2002).mkv" size="241726588" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Writer tag="Rob Gibbs"/>
			  <Writer tag="Jeff Pidgeon"/>
			  <Director tag="Roger Gould"/>
			  <Director tag="Pete Docter"/>
			  <Country tag="USA"/>
			  <Role tag="Billy Crystal"/>
			  <Role tag="John Goodman"/>
			</Video>
			<Video ratingKey="7" key="/library/metadata/7" studio="Asmik Ace Entertainment (Japan)" type="movie" title="Mind Game" summary="Mind Game is a 2004 Japanese animated feature film based on Robin Nishi's Japanese comic of the same name. It was planned, produced and primarily animated by Studio 4°C and adapted and directed by Masaaki Yuasa, with chief animation direction and model sheets by Yūichirō Sueyoshi, art direction by Tōru Hishiyama and groundwork and further animation direction by Masahiko Kubo.&#xA;&#xA;It is unusual among features other than anthology films in using a series of disparate visual styles to tell one continuous story. As the director commented in a Japan Times interview, &quot;Instead of telling it serious and straight, I went for a look that was a bit wild and patchy. I think that Japanese animation fans today don't necessarily demand something that's so polished. You can throw different styles at them and they can still usually enjoy it.&quot;&#xA;&#xA;While a critical and financial flop in its release in Japan, the film received a cult audience and was well received, winning multiple awards worldwide, and has been praised by directors Satoshi Kon and Bill Plympton." year="2004" thumb="/library/metadata/7/thumb?t=1343788206" art="/library/metadata/7/art?t=1343788206" duration="6180000" originallyAvailableAt="2004-07-28" addedAt="1343788168" updatedAt="1343788206">
			  <Media id="7" duration="6207072" bitrate="1876" width="704" height="368" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="480" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/7/file.mkv" duration="6207072" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Mind Game.mkv" size="1455660186" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Japanese Movies"/>
			  <Writer tag="Robin Nishi"/>
			  <Director tag="Masaaki Yuasa"/>
			  <Country tag="Japan"/>
			  <Role tag="Koji Imada"/>
			  <Role tag="Sayaka Maeda"/>
			  <Role tag="Takashi Fujii"/>
			</Video>
			<Video ratingKey="1447" key="/library/metadata/1447" studio="Pixar" type="movie" title="Monsters, Inc." contentRating="G" summary="Monsters, Inc. is a 2001 American computer-animated comedy film and the fourth feature-length film produced by Pixar. It was directed by Pete Docter, co-directed by Lee Unkrich and David Silverman, and written by Jill Culton, Peter Docter, Ralph Eggleston, Dan Gerson, Jeff Pidgeon, Rhett Reese, Jonathan Roberts, and Andrew Stanton. The starring voices are John Goodman and Billy Crystal as Sulley and Mike, two monsters who work at a power plant that powers the monster world with children's screams, Mary Gibbs as Boo, a little girl who enters the monster world, Steve Buscemi as Randall, a rival monster, Jennifer Tilly as Celia, Mike's girlfriend, and James Coburn as Mr. Waternoose, the plant's owner.&#xA;&#xA;The film was released to theatres by Walt Disney Pictures in the United States on November 2, 2001, in Australia on December 26, 2001, and in the United Kingdom on February 8, 2002. It was a commercial and critical success, grossing over $525,366,597 worldwide. Review aggregator Rotten Tomatoes also reported extremely positive reviews with a 95% approval rating. 11 years after the film's release, Monsters, Inc. is scheduled for a 3D re-release on December 19, 2012, while a prequel, Monsters University, is scheduled a few months later with a June 21, 2013 release." rating="8.6" viewCount="1" year="2001" tagline="You Won't Believe Your Eye." thumb="/library/metadata/1447/thumb?t=1343952986" art="/library/metadata/1447/art?t=1343952986" duration="5640000" originallyAvailableAt="2001-10-28" addedAt="1343952933" updatedAt="1343952986">
			  <Media id="1319" duration="5535807" bitrate="2164" width="1280" height="688" aspectRatio="1.85" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="720" container="mp4" videoFrameRate="24p" optimizedForStreaming="1">
				<Part key="/library/parts/1537/file.mp4" duration="5535807" file="\\GIMMICKY-SERVER\Videos\Movies\Monsters, Inc..mp4" size="1497466884" container="mp4" has64bitOffsets="0" optimizedForStreaming="1"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Dan Gerson"/>
			  <Writer tag="Andrew Stanton"/>
			  <Director tag="David Silverman"/>
			  <Director tag="Lee Unkrich"/>
			  <Director tag="Pete Docter"/>
			  <Country tag="USA"/>
			  <Role tag="Jennifer Tilly"/>
			  <Role tag="James Coburn"/>
			  <Role tag="Steve Buscemi"/>
			</Video>
			<Video ratingKey="1453" key="/library/metadata/1453" studio="The Jim Henson Company" type="movie" title="The Muppet Christmas Carol" titleSort="Muppet Christmas Carol" contentRating="G" summary="The Muppet Christmas Carol is a 1992 American musical comedy film adaptation of Charles Dickens' A Christmas Carol, starring Michael Caine as Ebenezer Scrooge, directed by Brian Henson, produced by Jim Henson Productions, and released by Walt Disney Pictures. It is the fourth of a series of live-action musical feature films starring The Muppets, and the first produced after the sudden death of Muppets creator Jim Henson and fellow puppeteer Richard Hunt. Although it is a comedic remake with contemporary songs, it otherwise follows Dickens' original story closely.&#xA;&#xA;The film was dedicated to the memory of Jim Henson and Richard Hunt, two original Muppet performers, who died before the film's release. The film was released at the beginning of the third season of Dinosaurs." viewCount="1" year="1992" thumb="/library/metadata/1453/thumb?t=1343952975" art="/library/metadata/1453/art?t=1343952975" duration="5100000" originallyAvailableAt="1992-12-11" addedAt="1343952934" updatedAt="1343952975">
			  <Media id="1325" duration="4941528" bitrate="1239" width="512" height="288" aspectRatio="1.78" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="PAL">
				<Part key="/library/parts/1543/file.avi" duration="4941528" file="\\GIMMICKY-SERVER\Videos\Movies\The Muppet Christmas Carol.avi" size="765480284" container="avi"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Musical"/>
			  <Writer tag="Jerry Juhl"/>
			  <Director tag="Brian Henson"/>
			  <Country tag="USA"/>
			  <Role tag="Michael Caine"/>
			  <Role tag="Steve Whitmire"/>
			  <Role tag="Dave Goelz"/>
			</Video>
			<Video ratingKey="1449" key="/library/metadata/1449" studio="Jim Henson Company, The" type="movie" title="A Muppet Family Christmas" titleSort="Muppet Family Christmas" contentRating="G" summary="A Muppet Family Christmas is a 1987 Christmas television special starring Jim Henson's Muppets." viewCount="1" year="1987" thumb="/library/metadata/1449/thumb?t=1343952991" art="/library/metadata/1449/art?t=1343952991" duration="2880000" originallyAvailableAt="1987-12-16" addedAt="1343952934" updatedAt="1343952991">
			  <Media id="1321" duration="2816052" bitrate="1749" width="352" height="240" aspectRatio="1.33" audioChannels="2" audioCodec="mp2" videoCodec="mpeg1video" videoResolution="sd" container="mpeg" videoFrameRate="NTSC">
				<Part key="/library/parts/1539/file.mpg" duration="2816052" file="\\GIMMICKY-SERVER\Videos\Movies\Muppets Family Christmas.mpg" size="615858176" container="mpeg"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Family"/>
			  <Director tag="Peter HarrisEric Till"/>
			  <Role tag="Gerry Parkes"/>
			  <Role tag="Jim Henson"/>
			  <Role tag="Frank Oz"/>
			</Video>
			<Video ratingKey="1454" key="/library/metadata/1454" studio="ITC Entertainment" type="movie" title="The Muppet Movie" titleSort="Muppet Movie" contentRating="G" summary="The Muppet Movie is the first of a series of live-action musical feature films starring Jim Henson's Muppets. Released in 1979, the film was produced by Henson Associates, and ITC Entertainment. It was released between the third and fourth seasons of The Muppet Show.&#xA;&#xA;The film is dedicated to ventriloquist Edgar Bergen who died during production." viewCount="1" year="1979" tagline="More entertaining than humanly possible." thumb="/library/metadata/1454/thumb?t=1343952979" art="/library/metadata/1454/art?t=1343952979" duration="5700000" originallyAvailableAt="1979-05-31" addedAt="1343952934" updatedAt="1343952979">
			  <Media id="1326" duration="5709720" bitrate="1028" width="576" height="320" aspectRatio="1.78" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="24p">
				<Part key="/library/parts/1544/file.avi" duration="5709720" file="\\GIMMICKY-SERVER\Videos\Movies\The Muppet Movie.avi" size="734234624" container="avi"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Musical comedy"/>
			  <Writer tag="Jerry Juhl"/>
			  <Writer tag="Jack Burns"/>
			  <Director tag="James Frawley"/>
			  <Country tag="USA"/>
			  <Role tag="Charles Durning"/>
			  <Role tag="Cloris Leachman"/>
			  <Role tag="Milton Berle"/>
			</Video>
			<Video ratingKey="1448" key="/library/metadata/1448" studio="The Walt Disney Company" type="movie" title="Muppet Treasure Island" contentRating="G" summary="Muppet Treasure Island is a 1996 American musical film based on Robert Louis Stevenson's Treasure Island. It is the fifth feature film to star The Muppets and was directed by Jim Henson's son Brian Henson.&#xA;&#xA;Similarly to the earlier Muppet Christmas Carol, the key roles were played by live-action actors, with the Muppets in supporting roles. The live-action actors consisted of Tim Curry as Long John Silver, Billy Connolly as Billy Bones, Jennifer Saunders, and Kevin Bishop in his feature film debut as Jim Hawkins. Kermit the Frog appeared as Captain Abraham Smollett, Fozzie Bear as Squire Trelawney, Sam the Eagle as Mr. Samuel Arrow, and Miss Piggy as the gender-flipped castaway &quot;Benjamina&quot; Gunn. Following their success as the narrators of The Muppet Christmas Carol, The Great Gonzo and Rizzo the Rat appeared in specially created roles as Jim's best friends. The film was released on February 16, 1996 before Muppets Tonight aired on ABC in March." viewCount="1" year="1996" tagline="Set sail for Muppet mayhem!" thumb="/library/metadata/1448/thumb?t=1343952994" art="/library/metadata/1448/art?t=1343952994" duration="5700000" originallyAvailableAt="1996-02-16" addedAt="1343952933" updatedAt="1343952994">
			  <Media id="1320" duration="5731733" bitrate="1316" width="720" height="552" aspectRatio="1.85" audioChannels="2" audioCodec="aac" videoCodec="h264" videoResolution="576" container="mp4" videoFrameRate="PAL" optimizedForStreaming="0">
				<Part key="/library/parts/1538/file.mp4" duration="5731733" file="\\GIMMICKY-SERVER\Videos\Movies\Muppet Treasure Island.mp4" size="942948001" container="mp4" has64bitOffsets="0" optimizedForStreaming="0"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Adventure"/>
			  <Director tag="Brian Henson"/>
			  <Country tag="USA"/>
			  <Role tag="Billy Connolly"/>
			  <Role tag="Tim Curry"/>
			  <Role tag="Kevin Bishop"/>
			</Video>
			<Video ratingKey="1455" key="/library/metadata/1455" studio="Walt Disney Pictures" type="movie" title="The Muppets" titleSort="Muppets" contentRating="PG" summary="The Muppets is a 2011 American musical comedy film, the first Muppets theatrical release in 12 years. The film is directed by James Bobin, written by Jason Segel and Nicholas Stoller, produced by Jason Segel, Martin Baker, David Furnish, David Hoberman, Todd Lieberman, and John Scotti, and stars Jason Segel, Amy Adams, Chris Cooper and Rashida Jones.&#xA;&#xA;In the film, Walter, the world's biggest Muppet fan, his brother Gary, and Gary's girlfriend Mary help Kermit the Frog reunite the Muppets. They must raise $10 million to save the Muppet Theater from Tex Richman, a businessman who plans to demolish the studio to drill for oil.&#xA;&#xA;The film was first announced in March 2008, with production commencing in September 2010. The film premiered at the 2011 Savannah Film Festival, and was released by Walt Disney Pictures in North America on November 23, 2011. The film won an Academy Award for Best Original Song for the song &quot;Man or Muppet&quot;, written by Bret McKenzie; the first Academy Award presented to a Muppet film. The Muppets is also the highest-grossing film of the franchise to date." rating="7.9" viewCount="1" year="2011" tagline="They're closer than you think." thumb="/library/metadata/1455/thumb?t=1343953004" art="/library/metadata/1455/art?t=1343953004" duration="7200000" originallyAvailableAt="2011-11-04" addedAt="1343952934" updatedAt="1343953004">
			  <Media id="1327" duration="6164256" bitrate="11315" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/1545/file.mkv" duration="6164256" file="\\GIMMICKY-SERVER\Videos\Movies\The Muppets (2011).mkv" size="8719161952" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Music"/>
			  <Writer tag="Jason Segel"/>
			  <Writer tag="Nicholas Stoller"/>
			  <Director tag="James Bobin"/>
			  <Country tag="USA"/>
			  <Role tag="Donald Glover"/>
			  <Role tag="French Stewart"/>
			  <Role tag="Dave Grohl"/>
			</Video>
			<Video ratingKey="1450" key="/library/metadata/1450" studio="Jim Henson Pictures" type="movie" title="Muppets from Space" contentRating="G" summary="Muppets from Space is a 1999 science fiction comedy film and the sixth feature film to star The Muppets, and the first since the death of Muppets creator Jim Henson to have an original Muppet-focused plot. The film was directed by Tim Hill, produced by Jim Henson Pictures, and released to theaters on July 14, 1999 by Columbia Pictures.&#xA;This is the only Muppet film that doesn't focus on Kermit the Frog (it focuses on Gonzo the Great). &#xA;This also marks the first film appearances of Pepe the King Prawn and Bobo the Bear in the Muppets franchise, having only appeared previously on Muppets Tonight." viewCount="1" year="1999" tagline="Space. It's not as deep as you think." thumb="/library/metadata/1450/thumb?t=1343952999" art="/library/metadata/1450/art?t=1343952999" duration="5220000" originallyAvailableAt="1999-07-14" addedAt="1343952934" updatedAt="1343952999">
			  <Media id="1322" duration="5081736" bitrate="980" width="352" height="264" aspectRatio="1.33" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="PAL">
				<Part key="/library/parts/1540/file.avi" duration="5081736" file="\\GIMMICKY-SERVER\Videos\Movies\Muppets from Space.avi" size="622539264" container="avi"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Jerry Juhl"/>
			  <Director tag="Tim Hill"/>
			  <Country tag="USA"/>
			  <Role tag="Kathy Griffin"/>
			  <Role tag="Dave Goelz"/>
			  <Role tag="Bill Barretta"/>
			</Video>
			<Video ratingKey="1456" key="/library/metadata/1456" studio="Sesame Workshop" type="movie" title="The Muppets Take Manhattan" titleSort="Muppets Take Manhattan" contentRating="G" summary="The Muppets Take Manhattan is a 1984 family film directed by Frank Oz. It is the third of a series of live-action musical feature films starring Jim Henson's Muppets, and the second to last film before Henson's death (the last being Follow That Bird). This film was produced by Henson Associates and TriStar Pictures, and was filmed on location in New York City during the summer of 1983 and released in movie theatres in 1984. It was the first film directed solely by Frank Oz (who also performs Fozzie Bear, Miss Piggy, and Animal), as he previously co-directed The Dark Crystal with Jim Henson. &#xA;&#xA;The film introduced the Muppet Babies, as toddler versions of the Muppet characters in a fantasy sequence. The Muppet Babies later received their own Saturday morning animated television series, which aired on CBS from 1984 until 1992 and has since been syndicated worldwide.&#xA;&#xA;This is also the first (and so far only) Muppet film not to have a main antagonist; however, the closest thing to a villain that it has is a Broadway producer and crook named Martin Price (played by Dabney Coleman), but he has only one scene and plays a minor part." viewCount="1" year="1984" thumb="/library/metadata/1456/thumb?t=1343953002" art="/library/metadata/1456/art?t=1343953002" duration="5640000" originallyAvailableAt="1984-07-13" addedAt="1343952934" updatedAt="1343953002">
			  <Media id="1328" duration="5432921" bitrate="1339" width="640" height="360" aspectRatio="1.78" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="PAL">
				<Part key="/library/parts/1546/file.avi" duration="5432921" file="\\GIMMICKY-SERVER\Videos\Movies\The Muppets Take Manhatten.avi" size="909717090" container="avi"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Adventure"/>
			  <Writer tag="Jay Tarses"/>
			  <Writer tag="Frank Oz"/>
			  <Director tag="Frank Oz"/>
			  <Country tag="USA"/>
			  <Role tag="Dabney Coleman"/>
			  <Role tag="Elliott Gould"/>
			  <Role tag="John Landis"/>
			</Video>
			<Video ratingKey="1457" key="/library/metadata/1457" studio="Fox Television Studios" type="movie" title="The Muppets' Wizard of Oz" titleSort="Muppets' Wizard of Oz" contentRating="G" summary="The Muppets' Wizard of Oz (also known as The Muppets: Wizard of Oz and titled The Muppets' Wonderful Wizard of Oz in pre-release advertising) is a 2004 musical telefilm directed by Kirk Thatcher and starring Ashanti and The Muppets. The film was produced by Bill Barretta and written by Debra Frank, Steve L. Hayes, Tom Martin, and Adam F. Goldberg.&#xA;&#xA;The Muppets' Wizard of Oz follows a young woman named Dorothy Gale who dreams of becoming a singer but is unable to pursue her dreams. After being swept up by a tornado with her pet prawn Toto, she embarks on a journey to meet the Wizard of Oz, the person who both she and the citizens of Oz believe can help make her dream come true.&#xA;&#xA;The film was produced by The Jim Henson Company in association with Fox Television Studios, Touchstone Television, and the Muppets Holding Company. Preproduction on The Muppets' Wizard of Oz took place throughout February 2004, and filming occurred during September 2004. ABC made several changes to the film after the initial script was written, ultimately deciding to base the film on L. Frank Baum's original novel The Wonderful Wizard of Oz instead of the 1939 film. As with the preceding Muppet films, The Muppets' Wizard of Oz became a musical, and included five new songs written and composed by Michael Giacchino.&#xA;&#xA;The Muppets' Wizard of Oz premiered on April 27, 2005 at the Tribeca Film Festival. The film's television premiere was broadcast on ABC on May 20, 2005. Overall, the film ended up receiving negative reviews from critics. Most critics agreed that the film was too mature for young audiences, and that the cameo scenes and popular culture marks were unnecessary." viewCount="1" year="2005" thumb="/library/metadata/1457/thumb?t=1343953004" art="/library/metadata/1457/art?t=1343953004" duration="6000000" originallyAvailableAt="2004-05-14" addedAt="1343952934" updatedAt="1343953004">
			  <Media id="1329" duration="5233800" bitrate="1121" width="512" height="384" aspectRatio="1.33" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="24p">
				<Part key="/library/parts/1547/file.avi" duration="5233800" file="\\GIMMICKY-SERVER\Videos\Movies\The Muppets Wizard of OZ.avi" size="733562880" container="avi"/>
			  </Media>
			  <Genre tag="Television movie"/>
			  <Genre tag="Fantasy"/>
			  <Writer tag="Adam F. Goldberg"/>
			  <Writer tag="Debra Frank"/>
			  <Director tag="Kirk R. Thatcher"/>
			  <Country tag="USA"/>
			  <Role tag="Bill Barretta"/>
			  <Role tag="Ashanti"/>
			  <Role tag="Jeffrey Tambor"/>
			</Video>
			<Video ratingKey="10" key="/library/metadata/10" studio="Toei Company" type="movie" title="Nausicaä of the Valley of the Wind" contentRating="PG" summary="Nausicaä of the Valley of the Wind is a 1984 Japanese animated post-apocalyptic fantasy adventure film written and directed by Hayao Miyazaki, based on his manga of the same name. The film stars the voices of Sumi Shimamoto, Goro Naya, Yoji Matsuda, Yoshiko Sakakibara and Iemasa Kayumi.&quot;&#xA;&#xA;The film tells the story of Nausicaä, a young princess of the Valley of the Wind who gets involved in a struggle with Tolmekia, a kingdom that tries to use an ancient weapon to eradicate a jungle of mutant giant insects. Nausicaä must stop the Tolmekians from enraging these creatures. &#xA;&#xA;The film was released in Japan on March 4, 1984 and was presented by the World Wide Fund for Nature. While created before Studio Ghibli was founded, the film is considered to be the beginning of the studio and is often included as part of the Studio's works, including the Studio Ghibli Collection DVDs. Among its numerous awards, it won the Animage Anime Grand Prix prize in 1984." rating="9.2" viewCount="1" year="1984" thumb="/library/metadata/10/thumb?t=1343788216" art="/library/metadata/10/art?t=1343788216" duration="7020000" originallyAvailableAt="1984-03-11" addedAt="1343788168" updatedAt="1343788216">
			  <Media id="10" duration="7022048" bitrate="18350" width="1920" height="1038" aspectRatio="1.85" audioChannels="2" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/10/file.mkv" duration="7022048" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Nausicaa of the Valley of the Wind.mkv" size="16107676673" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Hayao Miyazaki"/>
			  <Director tag="Hayao Miyazaki"/>
			  <Country tag="Japan"/>
			  <Role tag="Alison Lohman"/>
			  <Role tag="Patrick Stewart"/>
			  <Role tag="Uma Thurman"/>
			</Video>
			<Video ratingKey="5937" key="/library/metadata/5937" studio="Revolution Studios" type="movie" title="The One" titleSort="One" contentRating="PG-13" summary="The One is a 2001 American action film directed by James Wong and starring Jet Li, Delroy Lindo, Jason Statham and Carla Gugino." rating="7.5" viewCount="1" year="2001" tagline="Stealing the power of the universes one by one." thumb="/library/metadata/5937/thumb?t=1345272768" art="/library/metadata/5937/art?t=1345272768" duration="5220000" originallyAvailableAt="2001-11-02" addedAt="1345272747" updatedAt="1345272768">
			  <Media id="5351" duration="5238233" bitrate="8703" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5664/file.mkv" duration="5238233" file="\\GIMMICKY-SERVER\Videos\Movies\The One.mkv" size="5699097176" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Action"/>
			  <Writer tag="Glen Morgan"/>
			  <Writer tag="James Wong"/>
			  <Director tag="James Wong"/>
			  <Country tag="USA"/>
			  <Role tag="Carla Gugino"/>
			  <Role tag="Jason Statham"/>
			  <Role tag="Delroy Lindo"/>
			</Video>
			<Video ratingKey="2144" key="/library/metadata/2144" studio="Pixar" type="movie" title="One Man Band" contentRating="G" summary="One Man Band is a 2005 Pixar animated short film. The film made its world premiere at the 29th Annecy International Animated Film Festival in Annecy, France, and won the Platinum Grand Prize at the Future Film Festival in Bologna, Italy. It was shown with the theatrical release of Cars.&#xA;&#xA;The short was written and directed by Andrew Jimenez and Mark Andrews and produced by Osnat Shurer, head of Pixar's Shorts group. The score for the short was written by Michael Giacchino, who also composed the scores for Pixar's animated feature films The Incredibles, Ratatouille, Up and Cars 2.&#xA;&#xA;Like many Pixar shorts, the film is completely free of dialogue, instead using music (played by the characters) and pantomime to tell the story.&#xA;&#xA;On January 31, 2006 it was nominated for the Academy Award for Best Animated Short Film, but lost to The Moon and the Son: An Imagined Conversation by John Canemaker and Peggy Stern. It was included in the Animation Show of Shows in 2005." viewCount="1" year="2011" thumb="/library/metadata/2144/thumb?t=1344046610" art="/library/metadata/2144/art?t=1344046610" duration="240000" originallyAvailableAt="2005-06-22" addedAt="1344046554" updatedAt="1344046610">
			  <Media id="1958" duration="273315" bitrate="5980" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2271/file.mkv" duration="273315" file="\\GIMMICKY-SERVER\Videos\Movies\One Man Band (2005).mkv" size="204308738" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Director tag="Andrew Jimenez"/>
			  <Director tag="Mark Andrews"/>
			  <Country tag="USA"/>
			</Video>
			<Video ratingKey="1880" key="/library/metadata/1880" studio="Sony Pictures Entertainment" type="movie" title="Paprika" contentRating="R" summary="Paprika|パプリカ|Papurika}} is a 2006 Japanese animated science fiction film, based on Yasutaka Tsutsui's 1993 novel of the same name, about a research psychologist who uses a device that permits therapists to help patients by entering their dreams. &#xA;&#xA;The film was directed by Satoshi Kon, animated by Madhouse, and produced and distributed by Sony Pictures Classics. The film's score was composed by Susumu Hirasawa.&#xA;&#xA;The soundtrack is significant for being the first film to use a Vocaloid and &quot;Lola&quot; was used for various tracks." rating="8.1" viewCount="1" year="2006" tagline="This is your brain on anime." thumb="/library/metadata/1880/thumb?t=1344566149" art="/library/metadata/1880/art?t=1344566149" duration="5400000" originallyAvailableAt="2006-09-02" addedAt="1343969752" updatedAt="1344566149">
			  <Media id="1715" duration="5432427" bitrate="12559" width="1840" height="992" aspectRatio="1.85" audioChannels="6" audioCodec="flac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2028/file.mkv" duration="5432427" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Paprika.mkv" size="8528523813" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Thriller"/>
			  <Writer tag="Seishi Minakami"/>
			  <Writer tag="Satoshi Kon"/>
			  <Director tag="Satoshi Kon"/>
			  <Country tag="Japan"/>
			  <Role tag="Koichi Yamadera"/>
			  <Role tag="Megumi Hayashibara"/>
			  <Role tag="Akio Ohtsuka"/>
			</Video>
			<Video ratingKey="2145" key="/library/metadata/2145" studio="Pixar" type="movie" title="Partly Cloudy" contentRating="G" summary="Partly Cloudy is a Pixar CGI animated short film directed by Peter Sohn and produced by Kevin Reher. It was shown in theaters before Pixar's feature film Up and is a special feature on its DVD and Blu-ray release. It was included in the Animation Show of Shows in 2009. In a [http://features.cgsociety.org/story_custom.php?story_id=4996 CGSociety article], Sohn says his idea for the film came from watching Dumbo as a child. In the movie, a stork delivers Dumbo. This made him wonder where the bird gets the babies from. He decided the babies came from clouds and so that is why birds have to deliver them." viewCount="1" year="2009" thumb="/library/metadata/2145/thumb?t=1344046612" art="/library/metadata/2145/art?t=1344046612" duration="300000" originallyAvailableAt="2009-05-29" addedAt="1344046554" updatedAt="1344046612">
			  <Media id="1959" duration="349120" bitrate="9730" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2272/file.mkv" duration="349120" file="\\GIMMICKY-SERVER\Videos\Movies\Partly Cloudy (2009).mkv" size="424620986" container="mkv"/>
			  </Media>
			  <Genre tag="Computer Animation"/>
			  <Genre tag="Short Film"/>
			  <Director tag="Peter Sohn"/>
			  <Country tag="USA"/>
			  <Role tag="Tony Fucile (voice)"/>
			  <Role tag="Lori Richardson (voice)"/>
			</Video>
			<Video ratingKey="11" key="/library/metadata/11" studio="Studio Ghibli" type="movie" title="Ponyo on the Cliff by the Sea" contentRating="G" summary="Ponyo, initially titled in English as Ponyo on the Cliff by the Sea, is a 2008 Japanese animated fantasy film written and directed by Hayao Miyazaki of Studio Ghibli. It is Miyazaki's eighth film for Ghibli, and his tenth overall. The plot centers on a goldfish named Ponyo who befriends a five-year-old human boy, Sōsuke, and wants to become a human girl.&#xA;&#xA;The film has won several awards, including the Japan Academy Prize for Animation of the Year. It was released in Japan on July 19, 2008, August 14, 2009 in the US and Canada and February 12, 2010 in the UK. The film reached #9 in the US box office charts for its opening weekend." rating="8.6" viewCount="1" year="2008" tagline="Welcome To A World Where Anything Is Possible." thumb="/library/metadata/11/thumb?t=1343788218" art="/library/metadata/11/art?t=1343788218" duration="6060000" originallyAvailableAt="2008-07-19" addedAt="1343788168" updatedAt="1343788218">
			  <Media id="11" duration="6050040" bitrate="11956" width="1920" height="1040" aspectRatio="1.85" audioChannels="7" audioCodec="flac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/11/file.mkv" duration="6050040" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Ponyo On The Cliff By The Sea.mkv" size="9042023550" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Adventure"/>
			  <Writer tag="Hayao Miyazaki"/>
			  <Director tag="Hayao Miyazaki"/>
			  <Country tag="Japan"/>
			  <Role tag="Noah Cyrus"/>
			  <Role tag="Liam Neeson"/>
			  <Role tag="Matt Damon"/>
			</Video>
			<Video ratingKey="2146" key="/library/metadata/2146" studio="Pixar" type="movie" title="Presto" contentRating="G" summary="Presto is a 2008 American Pixar computer-animated short film shown in theaters before their feature length film WALL-E. The short is about a magician trying to perform a show with his uncooperative rabbit and is a gag-filled homage to classic cartoons such as Tom and Jerry and Looney Tunes. Presto was directed by veteran Pixar animator Doug Sweetland, in his directorial debut.&#xA;&#xA;The original idea for the short was a magician who incorporated a rabbit into his act who suffered from stage fright. This was considered to be too long and complicated, and the idea was reworked. To design the theater featured in Presto, the filmmakers visited several Opera Houses and theaters for set design ideas. Problems arose when trying to animate the theater's audience of 2,500 patrons—which was deemed too expensive—and was solved by showing the back of the audience. &#xA;&#xA;Reaction to the short was very positive, and reviewers of WALL-Es home media release considered it to be an enjoyable special feature. One critic called Presto a &quot;winner through and through&quot;, while another found it to be &quot;a short and hilarious animated film&quot;. Presto was nominated for an Annie Award and Academy Award. It was included in the Animation Show of Shows in 2008." rating="9" viewCount="1" year="2008" thumb="/library/metadata/2146/thumb?t=1344046630" art="/library/metadata/2146/art?t=1344046630" duration="300000" originallyAvailableAt="2008-06-27" addedAt="1344046554" updatedAt="1344046630">
			  <Media id="1960" duration="315296" bitrate="8138" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2273/file.mkv" duration="315296" file="\\GIMMICKY-SERVER\Videos\Movies\Presto (2008).mkv" size="320766724" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Computer Animation"/>
			  <Director tag="Doug Sweetland"/>
			  <Country tag="USA"/>
			  <Role tag="Doug Sweetland"/>
			</Video>
			<Video ratingKey="1451" key="/library/metadata/1451" studio="Walt Disney Pictures" type="movie" title="Ratatouille" contentRating="G" summary="Ratatouille (, ) is a 2007 American computer-animated comedy film produced by Pixar Animation Studios and distributed by Walt Disney Pictures. It is the eighth film produced by Pixar, and was directed by Brad Bird, who took over from Jan Pinkava in 2005. The title refers to a French dish (ratatouille) which is served in the film, and is also a play on words about the species of the main character. The film stars the voices of Patton Oswalt as Remy, an anthropomorphic rat who is interested in cooking; Lou Romano as Linguini, a young garbage boy who befriends Remy; Ian Holm as Skinner, the head chef of Auguste Gusteau's restaurant; Janeane Garofalo as Colette, a rôtisseur at Gusteau's restaurant; Peter O'Toole as Anton Ego, a restaurant critic; Brian Dennehy as Django, Remy's father and leader of his clan; Peter Sohn as Emile, Remy's brother; Brad Garrett as Auguste Gusteau, a recently deceased chef; and Will Arnett as Horst, the sous-chef at Gusteau's restaurant.&#xA;&#xA;The plot follows Remy, who dreams of becoming a chef and tries to achieve his goal by forming an alliance with a Parisian restaurant's garbage boy. Ratatouille was released on June 29, 2007 in the United States, to both positive reviews and box office success, and later won the Academy Award for Best Animated Feature, among other honors." rating="8.4" viewCount="1" year="2007" tagline="Dinner is served... Summer 2007" thumb="/library/metadata/1451/thumb?t=1343953034" art="/library/metadata/1451/art?t=1343953034" duration="6660000" originallyAvailableAt="2007-06-22" addedAt="1343952934" updatedAt="1343953034">
			  <Media id="1323" duration="6633387" bitrate="1880" width="1280" height="544" aspectRatio="2.35" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="720" container="mp4" videoFrameRate="24p" optimizedForStreaming="1">
				<Part key="/library/parts/1541/file.mp4" duration="6633387" file="\\GIMMICKY-SERVER\Videos\Movies\Ratatouille.mp4" size="1558913528" container="mp4" has64bitOffsets="0" optimizedForStreaming="1"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Coming of age"/>
			  <Writer tag="Emily Cook"/>
			  <Writer tag="Bob Peterson"/>
			  <Director tag="Jan Pinkava"/>
			  <Director tag="Brad Bird"/>
			  <Country tag="USA"/>
			  <Role tag="Peter O'Toole"/>
			  <Role tag="Lou Romano"/>
			  <Role tag="Will Arnett"/>
			</Video>
			<Video ratingKey="12" key="/library/metadata/12" type="movie" title="Redline" contentRating="PG-13" summary="The most dangerous and exciting car race in the universe is held only once every five years. And that's tonight. The competitors are lined up at the starting block. In his vehicle, JP, the most daredevil driver on the circuit, is ready for the green light. Female driver Sonoshee, with whom he is secretly in love, is also on the starting line. She will stop at nothing to get on to that podium. In this race, not only is anything possible, but also anything is allowed. In fact, their adversaries have modified their vehicles to equip them with highly destructive weapons; with such participants, it is hardly surprising that Redline is forbidden by the authorities, who will try anything to halt the proceedings. These speed addicts have to put themselves in mortal danger to achieve their aim: eternal glory for those who finally mount the podium." viewCount="1" year="2007" thumb="/library/metadata/12/thumb?t=1343790232" art="/library/metadata/12/art?t=1343790232" duration="5700000" originallyAvailableAt="2007-04-13" addedAt="1343788168" updatedAt="1343790232">
			  <Media id="12" duration="6168672" bitrate="4811" width="1280" height="720" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/12/file.mkv" duration="6168672" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Redline.mkv" size="3709893404" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Sports"/>
			  <Director tag="Andy Cheng"/>
			  <Country tag="USA"/>
			  <Role tag="Nathan Phillips"/>
			  <Role tag="Eddie Griffin"/>
			  <Role tag="Nadia Bjorlin"/>
			</Video>
			<Video ratingKey="5907" key="/library/metadata/5907" studio="Davis Films" type="movie" title="Resident Evil: Apocalypse" contentRating="R" summary="Resident Evil: Apocalypse is a 2004 science-fiction action film directed by Alexander Witt, from a screenplay written by producer Paul W.S. Anderson. It is the second installment in the Resident Evil film series, which is based on the Capcom survival horror video game series Resident Evil. &#xA;&#xA;Borrowing elements from the video games Resident Evil 2, 3: Nemesis, and Code: Veronica, Resident Evil: Apocalypse follows heroine Alice, who has escaped the underground Umbrella facility, who must band with other survivors including Jill Valentine and escape Raccoon City alive." rating="7.3" viewCount="1" year="2004" tagline="You're all going to die." thumb="/library/metadata/5907/thumb?t=1344796842" art="/library/metadata/5907/art?t=1344796842" duration="5880000" originallyAvailableAt="2004-09-10" addedAt="1344796797" updatedAt="1344796842">
			  <Media id="5322" duration="5628623" bitrate="4789" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5635/file.mkv" duration="5628623" file="\\GIMMICKY-SERVER\Videos\Movies\Resident Evil Apocalypse.mkv" size="3369819069" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Action"/>
			  <Writer tag="Paul W. S. Anderson"/>
			  <Director tag="Alexander Witt"/>
			  <Country tag="United Kingdom"/>
			  <Role tag="Matthew G. Taylor"/>
			  <Role tag="Sophie Vavasseur"/>
			  <Role tag="Eric Mabius"/>
			</Video>
			<Video ratingKey="5911" key="/library/metadata/5911" studio="Impact Pictures" type="movie" title="Resident Evil: Extinction" contentRating="R" summary="Resident Evil: Extinction is a 2007 science-fiction action film, and is the third installment in the Resident Evil film series, which is based on the Capcom survival horror series Resident Evil. The film follows the heroine Alice, along with a group of survivors from Raccoon City, as they attempt to travel across the Mojave desert wilderness to Alaska and escape a zombie apocalypse. The film was directed by Russell Mulcahy and produced by Paul W.S. Anderson.&#xA;&#xA;The film was released in the United States on September 21, 2007 and was commercially successful, grossing $147,717,833 worldwide. The film received mixed reviews from critics. It was released on DVD and Blu-ray in North America on January 1, 2008.&#xA;&#xA;This film was intended initially called Resident Evil: Afterlife according to the leaked script 4 years later, but for unknown reasons it was renamed to Resident Evil: Extinction. Still, in 2010 opened the fourth installment titled Resident Evil: Afterlife." rating="7.1" viewCount="1" year="2007" tagline="All Bets Are Off." thumb="/library/metadata/5911/thumb?t=1344901247" art="/library/metadata/5911/art?t=1344901247" duration="5700000" originallyAvailableAt="2007-09-20" addedAt="1344901188" updatedAt="1344901247">
			  <Media id="5326" duration="5645599" bitrate="4603" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5639/file.mkv" duration="5645599" file="\\GIMMICKY-SERVER\Videos\Movies\Resident Evil Extinction.mkv" size="3248463462" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Action"/>
			  <Writer tag="Paul W. S. Anderson"/>
			  <Director tag="Russell Mulcahy"/>
			  <Country tag="USA"/>
			  <Role tag="Jason O'Mara"/>
			  <Role tag="Matthew Marsden"/>
			  <Role tag="Chris Egan"/>
			</Video>
			<Video ratingKey="736" key="/library/metadata/736" type="movie" title="Revolutionary Girl Utena: The Movie" summary="Tenou Utena is the handsome new student at Ohtori Academy, who, since her break-up with Student Body President Touga, has assumed the identity of a male. One day, she receives a ring from one of the roses in the schools garden and out of nowhere, a floating arena appears in the sky.&#xA;&#xA;The duel arena, where The Rose Bride, and the power to revolutionize the world awaits." viewCount="1" year="1999" thumb="/library/metadata/736/thumb?t=1343872946" art="/library/metadata/736/art?t=1343872946" duration="4800000" addedAt="1343869646" updatedAt="1343872946">
			  <Media id="688" duration="5372075" bitrate="1744" width="720" height="480" aspectRatio="1.66" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="480" container="mkv" videoFrameRate="NTSC">
				<Part key="/library/parts/745/file.mkv" duration="5372075" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Revolutionary Girl Utena - The Adolescence of Utena.mkv" size="1171281272" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Action"/>
			  <Director tag="Kunihiko Ikuhara"/>
			  <Country tag="Japan"/>
			  <Role tag="Yuriko Fuchizaki"/>
			  <Role tag="川上とも子"/>
			</Video>
			<Video ratingKey="5938" key="/library/metadata/5938" studio="TriStar Pictures" type="movie" title="The Running Man" titleSort="Running Man" contentRating="R" summary="The Running Man is a 1987 American Science fiction action film loosely based on Stephen King's 1982 novel of the same name. Directed by Paul Michael Glaser, the film stars Arnold Schwarzenegger, María Conchita Alonso, Jesse Ventura, Jim Brown, and Richard Dawson. Paula Abdul is credited with the choreography of the Running Man dance troupe. &#xA;&#xA;The film, set in a dystopian America in the year 2019, is about a television show called The Running Man, where convicted criminal &quot;runners&quot; must escape death at the hands of professional killers." rating="8" viewCount="1" year="1987" tagline="The year is 2019. The finest men in America don't run for President. They run for their lives." thumb="/library/metadata/5938/thumb?t=1345272778" art="/library/metadata/5938/art?t=1345272778" duration="6060000" originallyAvailableAt="1987-11-13" addedAt="1345272747" updatedAt="1345272778">
			  <Media id="5352" duration="6043246" bitrate="7806" width="1280" height="720" aspectRatio="1.78" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5665/file.mkv" duration="6043246" file="\\GIMMICKY-SERVER\Videos\Movies\The Running Man.mkv" size="5896797854" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Dystopia"/>
			  <Writer tag="Steven E. de Souza"/>
			  <Director tag="Paul Michael Glaser"/>
			  <Country tag="USA"/>
			  <Role tag="Arnold Schwarzenegger"/>
			  <Role tag="Marvin J. McIntyre"/>
			  <Role tag="Jim Brown"/>
			</Video>
			<Video ratingKey="15" key="/library/metadata/15" studio="Studio Ghibli" type="movie" title="The Secret World of Arrietty" titleSort="Secret World of Arrietty" summary="Arrietty (titled in Japan and The Secret World of Arrietty in North America) is a 2010 Japanese animated fantasy film directed by Hiromasa Yonebayashi, written by Hayao Miyazaki and Keiko Niwa and produced by Studio Ghibli, based on Mary Norton's novel The Borrowers. The film tells the story of Arrietty, a young Borrower, who lives under the floorboards of a typical household. She eventually befriends Sho, a human boy with a heart condition since birth, who is living with his great aunt, Sadako. When Sadako's maid, Haru, becomes suspicious of the floorboard's disturbance, Arrietty and her family must escape detection, even if it means leaving their beloved home. The film stars the voices of Mirai Shida as the titular character, Ryunosuke Kamiki as Sho, and Tatsuya Fujiwara as Spiller.&#xA;&#xA;Ghibli announced the film in late 2009 with Yonebayashi making his directorial debut as the youngest director of a Ghibli film. Miyazaki supervised the production as a developing planner. The voice actors were approached in April 2010, and Cécile Corbel wrote the film's score as well as its theme song.&#xA;&#xA;Released in Japan on July 17, 2010, Arrietty received very positive reviews, all of which praised the animation and music. It also became the highest grossing Japanese film at the Japanese box office for the year 2010, and grossed over $145 million worldwide. The film also won the Animation of the Year award at the 34th Japan Academy Prize award ceremony. Two English language versions of the film were produced, a British dub produced by Studio Canal which was released in the United Kingdom on July 29, 2011, and an American dub released by Walt Disney Pictures in North America on February 17, 2012." rating="7.4" viewCount="1" year="2010" thumb="/library/metadata/15/thumb?t=1343790299" art="/library/metadata/15/art?t=1343790299" duration="5640000" originallyAvailableAt="2010-07-17" addedAt="1343788168" updatedAt="1343790299">
			  <Media id="15" duration="5647642" bitrate="10683" width="1920" height="1038" aspectRatio="1.85" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/15/file.mkv" duration="5647642" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\The Secret World of Arrietty.mkv" size="7542068328" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Japanese Movies"/>
			  <Writer tag="Keiko Niwa"/>
			  <Writer tag="Hayao Miyazaki"/>
			  <Director tag="Hiromasa Yonebayashi"/>
			  <Country tag="Japan"/>
			  <Role tag="Ryunosuke Kamiki"/>
			  <Role tag="Shinobu Ōtake"/>
			  <Role tag="Keiko Takeshita"/>
			</Video>
			<Video ratingKey="5912" key="/library/metadata/5912" studio="TriStar Pictures" type="movie" title="Silent Hill" contentRating="R" summary="Silent Hill is a 2006 horror film directed by Christophe Gans and written by Roger Avary. The film is an adaptation of the survival horror video game Silent Hill, created by Konami. The film, particularly its emotional, religious, and aesthetic content, includes elements from Silent Hill, Silent Hill 2, 3, and 4.&#xA;&#xA;The film follows a mother, Rose, who takes her adopted little daughter Sharon, to the town of Silent Hill, for which the latter cries while sleepwalking. Driving to Silent Hill with Sharon to seek a solution there, Rose is engaged in a car accident, afterwards finding Sharon missing and the town engulfed in an alternate dimension. Searching for Sharon, she faces reality shifts and a local cult, while uncovering Sharon's connection to the town's past.&#xA;&#xA;A sequel titled Silent Hill: Revelation 3D is due to release on October 26, 2012." rating="8.3" viewCount="1" year="2006" tagline="We've been expecting you." thumb="/library/metadata/5912/thumb?t=1344901371" art="/library/metadata/5912/art?t=1344901371" duration="7620000" originallyAvailableAt="2006-04-21" addedAt="1344901336" updatedAt="1344901371">
			  <Media id="5327" duration="7530523" bitrate="5058" width="1280" height="544" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5640/file.mkv" duration="7530523" file="\\GIMMICKY-SERVER\Videos\Movies\Silent Hill.mkv" size="4761362082" container="mkv"/>
			  </Media>
			  <Genre tag="Adventure"/>
			  <Genre tag="Horror"/>
			  <Writer tag="Roger Avary"/>
			  <Director tag="Christophe Gans"/>
			  <Country tag="France"/>
			  <Role tag="Tanya Allen"/>
			  <Role tag="Christopher Britton"/>
			  <Role tag="Lorry Ayers"/>
			</Video>
			<Video ratingKey="2464" key="/library/metadata/2464" studio="Toho Company" type="movie" title="Space Battleship Yamato - Resurrection" summary="In the year 2220 A.D., the Earth Federation launches a plan to evacuate Earth when discovering that a travelling black hole capable of destroying anything in its path is on course towards the solar system. As the people on Earth prepare to relocate to planet Amare, whose ruler offers refuge, the tyrants known as the &quot;S.U.S. Empire&quot; attack the first Earth evacuation fleet. After learning that his wife Capt. Yuki Mori-Kodai disappeared in the battle and that legendary space battleship Yamato has been fully rebuilt, Susumu Kodai accepts command of the ship as he intends to not only help humanity once again, but also find Yuki in the hope of helping his relationship with his daughter Miyuki, who puts the blame on him for her mother's disappearance. But in order to fullfil the mission, the Yamato must go through battles against the SUS Empire, who intend to spoil humanity's hopes of finding a new place to live in and turn Earth into energy for their own selfish needs." viewCount="1" year="2009" tagline="Fight for life! Fight with love! YAMATO, the human's last hope, has been resurrected." thumb="/library/metadata/2464/thumb?t=1344057373" art="/library/metadata/2464/art?t=1344057373" duration="8100000" originallyAvailableAt="2009-12-12" addedAt="1344057351" updatedAt="1344057373">
			  <Media id="2249" duration="8054832" bitrate="9017" width="1920" height="1040" aspectRatio="1.85" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2562/file.mkv" duration="8054832" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Space Battleship Yamato - Resurrection (2009).mkv" size="9079252640" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Yoshinobu Nishizaki"/>
			  <Writer tag="Shintaro Ishihara"/>
			  <Director tag="Yoshinobu Nishizaki"/>
			  <Country tag="Japan"/>
			  <Role tag="Takeshi Aono"/>
			  <Role tag="Tōru Furuya"/>
			  <Role tag="Koichi Yamadera"/>
			</Video>
			<Video ratingKey="2465" key="/library/metadata/2465" type="movie" title="Space Cruiser Yamato: The New Journey" summary="Time to ease up ... not! Although the Yamato's crew has witnessed the end of the long, hard-fought Comet Empire War, a peaceful future will have to wait. While Dessler gathers together the shattered remnants of his Gamilus Empire, new forces are at work in the universe that could augur in another conflict. Seems the Black Star Empire has invaded Dessler's homeworld and is decimating it, all the while gathering power for its war machine." viewCount="1" year="1979" thumb="/library/metadata/2465/thumb?t=1344057372" art="/library/metadata/2465/art?t=1344057372" duration="5400000" originallyAvailableAt="1979-07-14" addedAt="1344057351" updatedAt="1344057372">
			  <Media id="2250" duration="5737905" bitrate="1623" width="720" height="480" aspectRatio="1.66" audioChannels="2" audioCodec="vorbis" videoCodec="h264" videoResolution="480" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2563/file.mkv" duration="5737905" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Space Battleship Yamato - The New Voyage (1979).mkv" size="1164427420" container="mkv"/>
			  </Media>
			  <Genre tag="Science Fiction"/>
			  <Genre tag="Japanese Movies"/>
			  <Director tag="Leiji Matsumoto"/>
			  <Country tag="Japan"/>
			  <Role tag="Shūsei Nakamura"/>
			  <Role tag="Kei Tomiyama"/>
			  <Role tag="Yōko Asagami"/>
			</Video>
			<Video ratingKey="1881" key="/library/metadata/1881" studio="Triumph Films" type="movie" title="Steamboy" contentRating="PG-13" summary="Steamboy|スチームボーイ|Suchīmubōi}} is a 2004 Japanese steampunk animated film produced by Sunrise, directed and co-written by Katsuhiro Otomo, his second major anime release, following Akira. The film was released in Japan on July 17, 2004. Steamboy is one of the most expensive full length Japanese animated movies made to date. Additionally, the film was in production for ten years and utilized more than 180,000 drawings and 440 CG cuts." rating="8.3" viewCount="1" year="2004" thumb="/library/metadata/1881/thumb?t=1343970563" art="/library/metadata/1881/art?t=1343970563" duration="7560000" originallyAvailableAt="2004-07-17" addedAt="1343970541" updatedAt="1343970563">
			  <Media id="1716" duration="7572979" bitrate="4277" width="1920" height="1040" aspectRatio="1.85" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2029/file.mkv" duration="7572979" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Steamboy.mkv" size="4049090788" container="mkv"/>
			  </Media>
			  <Genre tag="Action"/>
			  <Genre tag="Period piece"/>
			  <Director tag="Katsuhiro Otomo"/>
			  <Country tag="Japan"/>
			  <Role tag="Anne Suzuki"/>
			  <Role tag="Manami Konishi"/>
			  <Role tag="Alfred Molina"/>
			</Video>
			<Video ratingKey="13" key="/library/metadata/13" studio="Warner Bros. Pictures" type="movie" title="Summer Wars" contentRating="PG" summary="Summer Wars is a 2009 Japanese animated science fiction film directed by Mamoru Hosoda, animated by Madhouse and distributed by Warner Bros. Pictures. The film's voice cast includes Ryunosuke Kamiki, Nanami Sakuraba, Mitsuki Tanimura, Sumiko Fuji and Ayumu Saitō. The film tells the story of Kenji Koiso, a timid eleventh-grade math genius who is taken to Ueda by twelfth-grade student Natsuki Shinohara to celebrate her great-grandmother's 90th birthday. However, he is falsely implicated in the hacking of a virtual world by an artificial intelligence. Kenji must repair the damage done to the virtual world and he must find a way to stop the artificial intelligence from causing any further damage.&#xA;&#xA;After producing The Girl Who Leapt Through Time, Madhouse was asked to produce the next film. Hosoda and writer Satoko Okudera conceived a story about a social network and a stranger's connection with a family. The real-life city of Ueda was chosen as the setting for Summer Wars, as part of the territory was once governed by the Sanada clan and was close to Hosoda's birthplace in Toyama. Hosoda used the clan as the basis for the Jinnouchi family after visiting his then-fiancé's home in Ueda.&#xA;&#xA;Production of Summer Wars commenced in 2006. Art director Youji Takeshige incorporated Japanese houses into his background designs. Hosoda also insisted that 80 family members were to be included as main characters. The project was first announced at the 2008 Tokyo International Anime Fair and the first trailer of the film was released in April 2009. Audience interest was fueled primarily through word of mouth and Internet publicity. A manga adaptation of the film was written by Iqura Sugimoto and began its serialization in July 2009.&#xA;&#xA;Summer Wars premiered in Japan on August 1, 2009. It grossed over US$1 million in its opening weekend in 127 theaters and ranked No. 7 at the box office. The film was well received by critics and the general audience and was financially successful, earning $18 million worldwide. It won several awards such as the 2010 Japan Academy Prize for Animation of the Year, the 2010 Japan Media Arts Festival's Animation Division Grand Prize, the Anaheim International Film Festival's Audience Award for Best Animated Feature and was nominated for the 2009 Golden Leopard award at the Locarno International Film Festival." rating="8.5" year="2009" thumb="/library/metadata/13/thumb?t=1343788223" art="/library/metadata/13/art?t=1343788223" duration="6780000" originallyAvailableAt="2009-08-01" addedAt="1343788168" updatedAt="1343788223">
			  <Media id="13" duration="6846272" bitrate="4689" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/13/file.mkv" duration="6846272" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Summer Wars.mkv" size="4013373120" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Satoko Okudera"/>
			  <Director tag="Mamoru Hosoda"/>
			  <Country tag="Japan"/>
			  <Role tag="Ryunosuke Kamiki"/>
			  <Role tag="Nanami Sakuraba"/>
			  <Role tag="Mitsuki Tanimura"/>
			</Video>
			<Video ratingKey="1960" key="/library/metadata/1960" studio="Bones Studio" type="movie" title="Sword of the Stranger" contentRating="NR" summary="Sword of the Stranger|ストレンヂア 無皇刃譚|Sutorenjia Mukōhadan|Stranger Mukō Hadan}} is a 2007 Japanese anime feature film directed by Masahiro Andō and produced by Bones. The film follows Kotaro, a young boy who is hunted by a group of swordsmen from Ming Dynasty China for mysterious reasons. Among the group is a fearsome Western fighter named Luo-Lang, whose only desire is to find a worthy opponent. Due to circumstances, Kotaro and his dog meet Nanashi, a nameless ronin who is haunted by memories of his past which have led him to avoid drawing his sword ever again. When the Ming clash with a Sengoku-era feudal lord, a proud general, and monks torn between faith and survival, the reason behind the Ming group's pursuit tests the bond between Kotaro and Nanashi." year="2007" thumb="/library/metadata/1960/thumb?t=1343974744" art="/library/metadata/1960/art?t=1343974744" duration="6120000" originallyAvailableAt="2007-09-29" addedAt="1343974714" updatedAt="1343974744">
			  <Media id="1790" duration="6128420" bitrate="8514" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2103/file.mkv" duration="6128420" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Sword of the Stranger.mkv" size="6522659842" container="mkv"/>
			  </Media>
			  <Genre tag="Action"/>
			  <Genre tag="Samurai cinema"/>
			  <Director tag="Masahiro Andô"/>
			  <Country tag="Japan"/>
			  <Role tag="Koichi Yamadera"/>
			  <Role tag="Naoto Takenaka"/>
			  <Role tag="Tomoya Nagase"/>
			</Video>
			<Video ratingKey="1961" key="/library/metadata/1961" studio="Destination Films" type="movie" title="Tekkonkinkreet" contentRating="R" summary="Tekkonkinkreet|鉄コン筋クリート|Tekkonkinkurīto|a child's mispronunciation of &quot;Tekkin Konkurito&quot; (steel reinforced concrete}} is a three-volume seinen manga series by Taiyō Matsumoto, which was originally serialized from 1993 to 1994 in Shogakukan's Big Comic Spirits and first published in English as Tekkonkinkreet: Black &amp; White. It was adapted into a 2006 feature-length Japanese anime film of the same name, directed by Michael Arias and animated by Studio 4°C. The film Tekkonkinkreet premiered in Japan on December 23, 2006.&#xA;&#xA;The story takes place in the fictional city of Takaramachi (Treasure Town) and centers on a pair of orphaned street kids &amp;ndash; the tough, canny Kuro (Black) and the childish, innocent Shiro (White), together known as the Cats &amp;ndash; as they deal with yakuza attempting to take over Treasure Town." year="2007" thumb="/library/metadata/1961/thumb?t=1343974742" art="/library/metadata/1961/art?t=1343974742" duration="6000000" originallyAvailableAt="2006-12-22" addedAt="1343974714" updatedAt="1343974742">
			  <Media id="1791" duration="6636758" bitrate="3294" width="1920" height="816" aspectRatio="2.35" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2104/file.mkv" duration="6636758" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Tekkon Kinkreet .mkv" size="2733032073" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Adventure"/>
			  <Writer tag="Taiyo Matsumoto"/>
			  <Director tag="Michael Arias"/>
			  <Country tag="Japan"/>
			  <Role tag="Kazunari Ninomiya"/>
			  <Role tag="Yusuke Iseya"/>
			  <Role tag="Yû Aoi"/>
			</Video>
			<Video ratingKey="156" key="/library/metadata/156" type="movie" title="The Place Promised in Our Early Days" summary="In an alternate history of the aftermath of World War II, Japan has been cleaved in half, with the south — Honshu and the other islands — allied with the United States and the northern island Hokkaido annexed by the enigmatic Union. It was on Hokkaido that a mysterious tower had been built, a strand of metal reaching up out of the atmosphere, visible from the northern tip of Honshu. In 1996, three teenagers, Hiroki, Takuya and Sayuri, make a pact — they will build an experimental aircraft, almost invisible to surveillance, cross over to Hokkaido and unlock the secrets of the tower. Their dream was never realized, because Sayuri was sent to Tokyo for treatment after she fell into a coma. It is now three years later. The rosy illusions of youth have fallen away, but not the unbreakable strength of the trio's promise. The truth of the tower will be uncovered, and with it, the link between it and Sayuri's mysterious, carefully tended condition." year="2004" thumb="/library/metadata/156/thumb?t=1343789506" art="/library/metadata/156/art?t=1343789506" duration="5460000" originallyAvailableAt="2004-11-20" addedAt="1343788168" updatedAt="1343789506">
			  <Media id="146" duration="5420448" bitrate="4596" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/146/file.mkv" duration="5420448" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\The Place Promised in Our Early Days.mkv" size="3114244324" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Coming of age"/>
			  <Director tag="Makoto Shinkai"/>
			  <Country tag="Japan"/>
			  <Role tag="Hidetaka Yoshioka"/>
			  <Role tag="Kazuhiko Inoue"/>
			  <Role tag="Masato Hagiwara"/>
			</Video>
			<Video ratingKey="1879" key="/library/metadata/1879" type="movie" title="Time of Eve" summary="A theatrical feature-length version of the six-part web series Eve no Jikan. Featuring additional new scenes. In the near future, probably in Japan, long after robots have been put to practical use, and not so long since human-type robots, or androids have appeared. Due to the Robot Ethical Committee, people take it for granted to treat robots as electronic appliances. However, because of their human appearance, except for the halos above their heads, some humans - called &quot;dori-kei&quot; (android-style) - are becoming too attracted to these androids, and this is causing new social problems." year="2010" tagline="Are you enjoying the Time of Eve?" thumb="/library/metadata/1879/thumb?t=1343969434" art="/library/metadata/1879/art?t=1343969434" duration="6360000" originallyAvailableAt="2010-03-06" addedAt="1343969420" updatedAt="1343969434">
			  <Media id="1714" duration="6400395" bitrate="6283" width="1920" height="1080" aspectRatio="1.78" audioChannels="2" audioCodec="flac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/2027/file.mkv" duration="6400395" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\Eve no Jikan Gekijouban.mkv" size="5027343923" container="mkv"/>
			  </Media>
			  <Genre tag="Science Fiction"/>
			  <Genre tag="Japanese Movies"/>
			  <Writer tag="Yasuhiro Yoshiura"/>
			  <Director tag="Yasuhiro Yoshiura"/>
			  <Country tag="Japan"/>
			  <Role tag="Yukana Nogami"/>
			  <Role tag="Kenji Nojima"/>
			  <Role tag="Jun Fukuyama"/>
			</Video>
			<Video ratingKey="1458" key="/library/metadata/1458" studio="© 1995 Disney/Pixar. All Rights Reserved." type="movie" title="Toy Story" contentRating="G" summary="Two rival toys - Woody, a pull-string talking cowboy, and Buzz Lightyear, a superhero space action-figure - learn to put aside their differences when circumstances separate them from their owner, Andy, and they find themselves on an adventure-filled mission where the only way they can survive is to form an uneasy alliance. (with audio commentary from Director John Lasseter, co-writer Andrew Stanton, art director Ralph Eggleston, supervising animator Pete Docter, supervising technical director Bill Reeves, and producers Ralph Guggenheim and Bonnie Arnold.)" rating="8.5" viewCount="1" year="1995" tagline="The Toys Are Back in Town." thumb="/library/metadata/1458/thumb?t=1343953020" art="/library/metadata/1458/art?t=1343953020" duration="4800000" originallyAvailableAt="1995-11-22" addedAt="1343952934" updatedAt="1343953020">
			  <Media id="1330" duration="4864939" bitrate="5014" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mp4" videoFrameRate="24p" optimizedForStreaming="0">
				<Part key="/library/parts/1548/file.m4v" duration="4864939" file="\\GIMMICKY-SERVER\Videos\Movies\Toy Story 1.m4v" size="3049274858" container="mp4" has64bitOffsets="1" optimizedForStreaming="0"/>
			  </Media>
			  <Genre tag="Kids &amp; Family"/>
			  <Writer tag="Joss Whedon"/>
			  <Director tag="John Lasseter"/>
			  <Country tag="USA"/>
			  <Role tag="John Lasseter"/>
			</Video>
			<Video ratingKey="1459" key="/library/metadata/1459" studio="© 1999 Disney/Pixar. All Rights Reserved." type="movie" title="Toy Story 2" contentRating="G" summary="An obsessive toy collector kidnaps Woody, who discovers that he is a highly valued collectible from a 1950s TV show and meets the other toys from that show while the gang from Andy's room springs into action to rescue their pal from becoming a museum piece. (with audio commentary from director John Lasseter, co-directors Lee Unkrich and Ash Brannon, and co-writer Andrew Stanton)" rating="8.4" viewCount="1" year="1999" tagline="The Toys are back!" thumb="/library/metadata/1459/thumb?t=1343953019" art="/library/metadata/1459/art?t=1343953019" duration="5520000" originallyAvailableAt="1999-11-24" addedAt="1343952934" updatedAt="1343953019">
			  <Media id="1331" duration="5895000" bitrate="4368" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mp4" videoFrameRate="24p" optimizedForStreaming="0">
				<Part key="/library/parts/1549/file.m4v" duration="5895000" file="\\GIMMICKY-SERVER\Videos\Movies\Toy Story 2.m4v" size="3218935276" container="mp4" has64bitOffsets="1" optimizedForStreaming="0"/>
			  </Media>
			  <Genre tag="Kids &amp; Family"/>
			  <Writer tag="Chris Webb"/>
			  <Director tag="John Lasseter"/>
			  <Country tag="USA"/>
			  <Role tag="John Lasseter"/>
			</Video>
			<Video ratingKey="1460" key="/library/metadata/1460" studio="© 2010 Disney/Pixar. All Rights Reserved." type="movie" title="Toy Story 3" contentRating="G" summary="While Andy prepares to leave home for college, the toys are mistakenly delivered to a day-care center, and it's up to Woody to convince the other toys that they weren't abandoned and to return home. (with two audio commentaries: the first with director Lee Unkrich and producer Darla K. Anderson; the second with supervising animator Bobby Podesta, supervising technical director Guido Quaroni, production designer Bob Pauley, supervising animator Mike Venturini and story supervisor Jason Katz.)" rating="8.8" viewCount="1" year="2010" tagline="No toy gets left behind." thumb="/library/metadata/1460/thumb?t=1343953051" art="/library/metadata/1460/art?t=1343953051" duration="6180000" originallyAvailableAt="2010-06-18" addedAt="1343952934" updatedAt="1343953051">
			  <Media id="1332" duration="6153387" bitrate="4898" width="1920" height="1080" aspectRatio="1.78" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="1080" container="mp4" videoFrameRate="24p" optimizedForStreaming="0">
				<Part key="/library/parts/1550/file.m4v" duration="6153387" file="\\GIMMICKY-SERVER\Videos\Movies\Toy Story 3.m4v" size="3767906172" container="mp4" has64bitOffsets="1" optimizedForStreaming="0"/>
			  </Media>
			  <Genre tag="Kids &amp; Family"/>
			  <Writer tag="Michael Arndt"/>
			  <Director tag="Lee Unkrich"/>
			  <Country tag="USA"/>
			  <Role tag="Lee Unkrich"/>
			</Video>
			<Video ratingKey="5909" key="/library/metadata/5909" studio="Lakeshore Entertainment" type="movie" title="Underworld" contentRating="R" summary="Vampires and werewolves have waged a nocturnal war against each other for centuries. But all bets are off when a female vampire warrior named Selene, who's famous for her strength and werewolf-hunting prowess, becomes smitten with a peace-loving male werewolf, Michael, who wants to end the war." rating="7.9" viewCount="1" year="2003" tagline="An immortal battle for supremacy." thumb="/library/metadata/5909/thumb?t=1344797428" art="/library/metadata/5909/art?t=1344797428" duration="8040000" originallyAvailableAt="2003-09-19" addedAt="1344797318" updatedAt="1344797428">
			  <Media id="5324" duration="8016968" bitrate="5436" width="1280" height="544" aspectRatio="2.35" audioChannels="2" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5637/file.mkv" duration="8016968" file="\\GIMMICKY-SERVER\Videos\Movies\Underworld.mkv" size="5447535470" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Thriller"/>
			  <Writer tag="Danny McBride"/>
			  <Director tag="Len Wiseman"/>
			  <Country tag="Germany"/>
			  <Role tag="Robbie Gee"/>
			  <Role tag="Wentworth Miller"/>
			  <Role tag="Bill Nighy"/>
			</Video>
			<Video ratingKey="5918" key="/library/metadata/5918" studio="Warner Bros. Entertainment" type="movie" title="V for Vendetta" contentRating="R" summary="V for Vendetta is a 2006 dystopian thriller film directed by James McTeigue and produced by Joel Silver and the Wachowski brothers, who also wrote the screenplay. It is an adaptation of the V for Vendetta comic book by Alan Moore and David Lloyd. Set in London in a near-future dystopian society, Natalie Portman stars as Evey, a working-class girl who must determine if her hero has become the very menace he is fighting against. Hugo Weaving plays V—a bold, charismatic freedom fighter driven to exact revenge on those who disfigured him. Stephen Rea portrays the detective leading a desperate quest to capture V before he ignites a revolution.&#xA;&#xA;The film was originally scheduled for release by Warner Bros. on Friday, November 4, 2005 (a day before the 400th Guy Fawkes Night), but was delayed; it opened on March 17, 2006, to positive reviews. Alan Moore, having already been disappointed with the film adaptations of two of his other graphic novels, From Hell and The League of Extraordinary Gentlemen, after reading the script for V for Vendetta refused to view the film and subsequently distanced himself from it.&#xA;&#xA;The film had been seen by many political groups as an allegory of oppression by government; libertarians and anarchists have used it to promote their beliefs. Activists belonging to the group Anonymous use the same Guy Fawkes mask popularized by the film when they appear in public at numerous high-profile events, emulating one of its key scenes. These masks have been seen at Occupy movement events. Famous artist David Lloyd is quoted saying: &quot;The Guy Fawkes mask has now become a common brand and a convenient placard to use in protest against tyranny – and I'm happy with people using it, it seems quite unique, an icon of popular culture being used this way.&quot;" rating="8.8" viewCount="1" year="2006" tagline="People should not be afraid of their governments. Governments should be afraid of their people." thumb="/library/metadata/5918/thumb?t=1345088063" art="/library/metadata/5918/art?t=1345088063" duration="7920000" originallyAvailableAt="2006-02-13" addedAt="1345088033" updatedAt="1345088063">
			  <Media id="5333" duration="7952320" bitrate="3117" width="1280" height="528" aspectRatio="2.35" audioChannels="6" audioCodec="ac3" videoCodec="h264" videoResolution="720" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5646/file.mkv" duration="7952320" file="\\GIMMICKY-SERVER\Videos\Movies\V For Vendetta.mkv" size="3098832102" container="mkv"/>
			  </Media>
			  <Genre tag="Thriller"/>
			  <Genre tag="Dystopia"/>
			  <Writer tag="Andy Wachowski"/>
			  <Writer tag="Larry Wachowski"/>
			  <Director tag="James McTeigue"/>
			  <Country tag="USA"/>
			  <Role tag="Sinéad Cusack"/>
			  <Role tag="Hugo Weaving"/>
			  <Role tag="Imogen Poots"/>
			</Video>
			<Video ratingKey="5906" key="/library/metadata/5906" studio="Pixar" type="movie" title="WALL-E" contentRating="G" summary="WALL-E (stylized with an interpunct as WALL•E) is a 2008 American computer-animated science fiction film produced by Pixar Animation Studios and directed by Andrew Stanton. The story follows a robot named WALL-E, who is designed to clean up a waste-covered Earth far in the future. He falls in love with another robot named EVE, who also has a programmed task, and follows her into outer space on an adventure that changes the destiny of both his kind and humanity. Both robots exhibit an appearance of free will and emotions similar to humans, which develop further as the film progresses.&#xA;&#xA;After directing Finding Nemo, Stanton felt Pixar had created believable simulations of underwater physics and was willing to direct a film largely set in space. Most of the characters do not have actual human voices, but instead communicate with body language and robotic sounds, designed by Ben Burtt, that resemble voices. In addition, it is the first animated feature by Pixar to have segments featuring live-action characters.&#xA;&#xA;Walt Disney Pictures released it in the United States and Canada on June 27, 2008. The film grossed $23.2 million on its opening day, and $63.1 million during its opening weekend in 3,992 theaters, ranking number one at the box office. This ranks as the fifth highest-grossing opening weekend for a Pixar film. Following Pixar tradition, WALL-E was paired with a short film, Presto, for its theatrical release.&#xA;&#xA;WALL-E has been met with overwhelmingly positive reviews among critics, scoring an approval rating of 96% on the review aggregator Rotten Tomatoes. It grossed $521.3 million worldwide, won the 2008 Golden Globe Award for Best Animated Feature Film, the 2009 Hugo Award for Best Dramatic Presentation, Long Form, the final Nebula Award for Best Script,, the Saturn Award for Best Animated Film, the Academy Award for Best Animated Feature as well as being nominated for five other Academy Awards at the 81st Academy Awards. WALL-E ranks first in TIMEs &quot;Best Movies of the Decade&quot;." rating="8.6" viewCount="1" year="2008" tagline="An Adventure Beyond the Ordinar-E" thumb="/library/metadata/5906/thumb?t=1344467089" art="/library/metadata/5906/art?t=1344467089" duration="5880000" originallyAvailableAt="2008-06-23" addedAt="1344467048" updatedAt="1344467089">
			  <Media id="5321" duration="5891886" bitrate="5706" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="aac" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5634/file.mkv" duration="5891886" file="\\GIMMICKY-SERVER\Videos\Movies\Wall-E.mkv" size="4202789617" container="mkv"/>
			  </Media>
			  <Genre tag="Fantasy"/>
			  <Genre tag="Comedy"/>
			  <Writer tag="Jim Reardon"/>
			  <Writer tag="Andrew Stanton"/>
			  <Director tag="Andrew Stanton"/>
			  <Country tag="USA"/>
			  <Role tag="Fred Willard"/>
			  <Role tag="Jeff Garlin"/>
			  <Role tag="John Ratzenberger"/>
			</Video>
			<Video ratingKey="5939" key="/library/metadata/5939" studio="Synapse Films" type="movie" title="Wild Zero" summary="Wild Zero is a 1999 Japanese &quot;Jet rock 'n' roll&quot; zombie horror comedy cult classic directed by Tetsuro Takeuchi, and starring the Japanese garage punk band Guitar Wolf. It borrows many elements from other popular B-movies such as Psychomania and Evil Dead II." viewCount="1" year="2001" tagline="Trash and chaossss!!!!" thumb="/library/metadata/5939/thumb?t=1345272774" art="/library/metadata/5939/art?t=1345272774" duration="5820000" originallyAvailableAt="1999-08-28" addedAt="1345272747" updatedAt="1345272774">
			  <Media id="5353" duration="5914859" bitrate="3516" width="720" height="384" aspectRatio="1.66" audioChannels="2" audioCodec="ac3" videoCodec="h264" videoResolution="480" container="mkv" videoFrameRate="60p">
				<Part key="/library/parts/5666/file.mkv" duration="5914859" file="\\GIMMICKY-SERVER\Videos\Movies\Wild Zero.mkv" size="2600194826" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Horror"/>
			  <Writer tag="Satoshi Takagi"/>
			  <Director tag="Tetsuro Takeuchi"/>
			  <Country tag="Japan"/>
			  <Role tag="Yoshiyuki Morishita"/>
			  <Role tag="Shiro Namiki"/>
			  <Role tag="Naruka Nakajo"/>
			</Video>
			<Video ratingKey="16" key="/library/metadata/16" studio="Toho Towa" type="movie" title="Wings of Honneamise" summary="Royal Space Force: The Wings of Honnêamise is a 1987 Japanese animated science fiction film and the first film produced by Gainax and Bandai Visual. It was directed and written by Hiroyuki Yamaga. The film was released on March 14, 1987, and grossed only modestly in the box office. Since then, it has received very positive reviews. A sequel was intended to be released set 50 years later, but due to lack of funds, Gainax abandoned it part way through production; Toshio Okada cited a fundamental dissatisfaction with the script and plot." viewCount="1" year="1987" thumb="/library/metadata/16/thumb?t=1343788225" art="/library/metadata/16/art?t=1343788225" duration="7500000" originallyAvailableAt="1987-03-14" addedAt="1343788169" updatedAt="1343788225">
			  <Media id="16" duration="7197216" bitrate="12891" width="1788" height="1028" aspectRatio="1.78" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/16/file.mkv" duration="7197216" file="\\GIMMICKY-SERVER\Videos\Anime\Movies\The Wings of Honneamise.mkv" size="11598041246" container="mkv"/>
			  </Media>
			  <Genre tag="Action"/>
			  <Genre tag="Romance Film"/>
			  <Director tag="Hiroyuki Yamaga"/>
			  <Country tag="Japan"/>
			  <Role tag="Hirotaka Suzuoki"/>
			  <Role tag="Bin Shimada"/>
			  <Role tag="Kazuyuki Sogabe"/>
			</Video>
			<Video ratingKey="5913" key="/library/metadata/5913" studio="Relativity Media" type="movie" title="Zombieland" contentRating="R" summary="Zombieland is a 2009 American zombie comedy film directed by Ruben Fleischer from a screenplay written by Rhett Reese and Paul Wernick. The film stars Woody Harrelson, Jesse Eisenberg, Emma Stone, and Abigail Breslin as survivors of a zombie apocalypse. Together they take an extended road trip across Southwestern United States in an attempt to find a sanctuary free from zombies.&#xA;&#xA;Zombieland received positive critical reviews and was a commercial success, grossing more than $60.8 million in 17 days and surpassing the 2004 film Dawn of the Dead as the top-grossing zombie film to date in the United States." rating="8.4" viewCount="1" year="2009" tagline="This place is so dead" thumb="/library/metadata/5913/thumb?t=1344918506" art="/library/metadata/5913/art?t=1344918506" duration="5280000" originallyAvailableAt="2009-09-25" addedAt="1344918484" updatedAt="1344918506">
			  <Media id="5328" duration="5262216" bitrate="15876" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
				<Part key="/library/parts/5641/file.mkv" duration="5262216" file="\\GIMMICKY-SERVER\Videos\Movies\Zombieland.mkv" size="10443434470" container="mkv"/>
			  </Media>
			  <Genre tag="Comedy"/>
			  <Genre tag="Action"/>
			  <Writer tag="Paul Wernick"/>
			  <Writer tag="Rhett Reese"/>
			  <Director tag="Ruben Fleischer"/>
			  <Country tag="USA"/>
			  <Role tag="Travis Grant"/>
			  <Role tag="Elle Alexander"/>
			  <Role tag="Rosie Bernhard"/>
			</Video>
		  </MediaContainer>
			*/
		
		/*
		<MediaContainer size="96" mediaTagPrefix="/system/bundle/media/flags/" mediaTagVersion="1343722542" sortAsc="1" viewGroup="movie" viewMode="458803" art="/:/resources/movie-fanart.jpg" title1="Movies" title2="All Movies" identifier="com.plexapp.plugins.library">
			<Video type="movie"/>
			<Video type="movie"/>
			<Video type="movie"/>
			<Video type="movie"/>
		</MediaContainer>
		*/
		
		public function parse(value:Object):Vector.<Movie> {
			var movies:Vector.<Movie> = new Vector.<Movie>();
			
			var data:XML = new XML(value);
			var list:XMLList = data..Video;
			
			var item:Movie;
			for each (var x:XML in list) {
				item = movieParser.parse(x);
				if (item)
					movies.push(item);
			}
			
			return movies;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function MoviesSectionParser() {
			
		}
	}
}