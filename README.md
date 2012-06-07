adhocpod
========

create a minimal podcast feed given an ordered set of audio files

Mac usage with iTunes:

  On a Mac, turn on web sharing and make sure your home directory is
  world readable and executable, so that the Mac's web server can get
  to your ~/Sites files.

  Create a directory where you will place the audio files, say
  "~/Sites/ad-hoc".  Put the example index.xml file there and edit it
  as desired.

  Then put iTunes-compatible audio files there as you like.  I like to
  use SoundConverter.app to, e.g., convert the SOSP 2009 audio from
  OGG to mp3.

  Add a batch of audio files to the podcast stream by running add.sh,
  listing the files in the order you would like them to appear in the
  podcast stream.  You will see the batch show up as the most recent
  episodes in the podcast inside iTunes.

  Under the iTunes "Advanced" menu, select "Subscribe to podcast", and
  enter the URL of the localhost's podcast location, using your
  username in the path.  The example below assumes your username is
  wrinkle.

    http://127.0.0.1/~wrinkle/ad-hoc/index.xml


BUGS:

  Batches will get mixed up unless they are N seconds apart, where N
  is the smallest number of episodes in a batch.


TODO:

	* Add "-i" option to initialize feed file

