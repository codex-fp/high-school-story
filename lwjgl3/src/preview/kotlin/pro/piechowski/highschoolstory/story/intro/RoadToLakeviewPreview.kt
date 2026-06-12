package pro.piechowski.highschoolstory.story.intro

import org.junit.jupiter.api.Test
import pro.piechowski.highschoolstory.asset.Assets
import pro.piechowski.highschoolstory.character.player.PlayerCharacter
import pro.piechowski.highschoolstory.highSchoolStoryModule
import pro.piechowski.highschoolstory.map.Road
import pro.piechowski.kge.asset.AssetsLoader
import pro.piechowski.kge.di.DependencyInjection.Global.get
import pro.piechowski.kge.map.TiledMapManagerAdapter
import pro.piechowski.kge.preview.preview
import pro.piechowski.kge.world

class RoadToLakeviewPreview {
    @Test
    fun preview() {
        preview(highSchoolStoryModule) {
            get<AssetsLoader<Assets>>().load()

            get<TiledMapManagerAdapter>().currentMap = Road()

            with(world) {
                PlayerCharacter("Test", "Character")
                RoadToLakeview().play()
            }
        }
    }
}
