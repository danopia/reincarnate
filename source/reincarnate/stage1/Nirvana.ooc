import reincarnate/[App, Nirvana, Usefile]
import reincarnate/stage1/Stage1

NirvanaS1: class extends Stage1 {
    init: func (.app) {
        this(app)
    }

    getUsefile: func (location, ver: String) -> Usefile {
        if(ver == null) {
            ver = "latest"
        }
        usefile := Usefile new(app nirvana getUsefile(location, ver))
        usefile put("_Slug", location)
        return usefile
    }
}
