
/*
 * NextScene
 * Created by Eqela Studio 2.0b7.4
 */

public class NextScene : SEScene
{
	SESprite text;
	int w;
	int h;
	
	public void initialize (SEResourceCache rsc)
	{
		base.initialize(rsc);
		
		w = get_scene_width();
		h = get_scene_height();
		
		add_entity(SESpriteEntity.for_color(Color.instance("black"), w, h));

		rsc.prepare_font("myfont", "arial bold color=white", 60);
		text = add_sprite_for_text("GAMEOVER!", "myfont");
		text.move(0.25*w, 0.5*h);
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
