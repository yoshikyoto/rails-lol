class Lol::Stats
  def initialize(
        hp,
        hpperlevel,
        mp,
        mpperlevel,
        movespeed,
        armor,
        armorperlevel,
        spellblock,
        spellblockperlevel,
        attackrange,
        hpregen,
        hpregenperlevel,
        mpregen,
        mpregenperlevel,
        crit,
        critperlevel,
        attackdamage,
        attackdamageperlevel,
        attackspeedoffset,
        attackspeedperlevel
      )
    @hp = hp
    @hpperlevel = hpperlevel
    @mp = mp
    @mpperlevel = mpperlevel
    @movespeed = movespeed
    @armor = armor
    @armorperlevel = armorperlevel
    @spellblock = spellblock
    @spellblockperlevel = spellblockperlevel
    @attackrange = attackrange
    @hpregen = hpregen
    @hpregenperlevel = hpregenperlevel
    @mpregen = mpregen
    @mpregenperlevel = mpregenperlevel
    @crit = crit
    @critperlevel = critperlevel
    @attackdamage = attackdamage
    @attackdamageperlevel = attackdamageperlevel
    @attackspeedoffset = attackspeedoffset
    @attackspeedperlevel = attackspeedperlevel
  end

  def hp_text()
    "ベース:#{@hp.to_s} レベルごとに:#{@hpperlevel.to_s}"
  end

  def mp_text()
    "ベース:#{@mo.to_s} レベルごとに:#{@mpperlevel.to_s}"
  end

  def movespeed_text()
    @movespeed.to_s
  end

  def armor_text()
    "ベース:#{@armor.to_s} レベルごとに#{@armorperlevel.to_s}"
  end

  def spellblock_text()
    "ベース:#{@spellblock.to_s} レベルごとに:#{@spellblockperlevel.to_s}"
  end

  def attackrange_text()
    @attackrange.to_s
  end

  def hpregen_text()
    "ベース:#{@hpregen.to_s} レベルごとに:#{@hpregenperlevel.to_s}"
  end

  def mpregen_text()
    "ベース:#{@mpregen.to_s} レベルごとに:#{@mpregenperlevel.to_s}"
  end

  def crit_text()
    "ベース#{@crit.to_s} レベルごとに:#{@critperlevel.to_s}"
  end

  def attackdamage_text()
    "ベース:#{@attackdamage.to_s} レベルごとに:#{@attackdamageperlevel.to_s}"
  end

  def attackspeed_text()
    "ベース: #{@attackspeedoffset.to_s} レベルごとに:#{@attackspeedperlevel.to_s}"
  end
end
