
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite bg;
	SESprite text;
	int w;
	int h;
	public static int x;
	public static int y;
	int i;
	SEEntity z;
	
	public void initialize(SEResourceCache rsc) 
	{
		w = get_scene_width();
		h = get_scene_height();
		x = 0;
		y = 0;
		
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		
		//AudioClipManager.prepare("gunshot");
		
		rsc.prepare_image("myoblivion", "oblivion", w, h);
		
		bg = add_sprite_for_image(SEImage.for_resource("myoblivion"));

		bg.move(0,0);

		add_entity(new PlayerEntity());

		for(i = 0; i < Math.random(1, 10); i++)
		{
			z = add_entity(new MyEntity());
			
		}

		//AudioClipManager.play("gunshot");
	

	}

	public void on_pointer_move(SEPointerInfo pi)
	{
		base.on_pointer_move(pi);

		x = pi.get_x();
		y = pi.get_y();
		
		if(z <= 1 || x == MyEntity.tx || y == MyEntity.ty)
		{
			switch_scene(new NextScene());
		}

	}

	public void update(TimeVal now, double delta)
	{
		base.update(now, delta);
		
	}

	public void cleanup() 
	{
		base.cleanup();
	}
}
