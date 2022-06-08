function onCreate()
    precacheImage('letter');
    precacheImage('box');
end

function onBeatHit()

    if curBeat == 240 then
        makeAnimatedLuaSprite('letter','letter', -500, -450);
        addAnimationByPrefix('letter','pop','letter', 24, false);--true or false to loop
        objectPlayAnimation('letter','pop', true);
        addLuaSprite('letter', true);
    end

    if curBeat == 272 then
        makeAnimatedLuaSprite('box','box', -500, -490);
        addAnimationByPrefix('box','out','box', 24, false);--true or false to loop
        objectPlayAnimation('box','out', true);
        addLuaSprite('box', true);
        removeLuaSprite('letter', false);
    end
    
    if curBeat == 273 then
        removeLuaSprite('box', false);
    end
end
