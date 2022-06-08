function onCreate()

	makeLuaSprite('sky', 'sky', -300, -250);
	setScrollFactor('sky', 0.7, 0.7);

	makeAnimatedLuaSprite('bunny', 'bunny', 1150, -30);
	setScrollFactor('bunny', 0.85, 0.85);

	makeLuaSprite('bush', 'bush', -120, 130);
	setScrollFactor('bush', 0.85, 0.85);

	makeLuaSprite('ground', 'ground', -300, -230);
	setScrollFactor('ground', 0.9, 0.9);

	makeAnimatedLuaSprite('Edd', 'Edd', 1800, 60);
	addAnimationByPrefix('Edd', 'walk', 'edd walk', 24, true);

	makeLuaSprite('bench', 'bench', 10, 380);
	setScrollFactor('bench', 0.95, 0.95);


	addLuaSprite('sky', false);
	addLuaSprite('bunny', false);
	addLuaSprite('bush', false);
	addLuaSprite('ground', false);
	addLuaSprite('Edd', false);
	addLuaSprite('bench', false);
	
	
end

function onBeatHit()

     if curBeat == 118 then
	    addAnimationByPrefix('bunny', 'bop', 'bunny pop', 24, false);
	    objectPlayAnimation('bunny','bop', true);
	    addLuaSprite('bunny', true);
	 end

	 if curBeat == 144 then
		doTweenX('walk', 'Edd', -450, 5, 'linear')
	 end

	 if curBeat == 161 then
        removeLuaSprite('Edd', false);
    end
end