
/*
 * MyEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MyEntity : SEEntity
{
	SESprite terrorist;
	int w;
	int h;
	
	public static int tx; //enemy
	public static int ty; //enemy
	
	public static int p_x; //player
	public static int p_y; //player
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);

		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("myterrorist", "terrorist", 0.1*w);
		terrorist = add_sprite_for_image(SEImage.for_resource("myterrorist"));

		terrorist.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		tx = terrorist.get_x();
		ty = terrorist.get_y();
		p_x = MainScene.x;
		p_y = MainScene.y;

		terrorist.move(tx+(p_x-tx)/Math.random(100, 100), ty+(p_y-ty)/Math.random(100, 100));
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
