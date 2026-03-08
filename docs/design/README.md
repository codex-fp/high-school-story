# Design Documentation — High School Story

All diagrams use **PlantUML** (`.puml`). Render with:
- [PlantUML plugin for IntelliJ IDEA](https://plugins.jetbrains.com/plugin/7017-plantuml-integration)
- [PlantUML online server](https://www.plantuml.com/plantuml)
- CLI: `plantuml file.puml`

---

## Index

### Player Character
| File | Description |
|------|-------------|
| [`player/backstory.md`](player/backstory.md) | Player origin, intro arc, dorm setup |

### World & Locations
| File | Description |
|------|-------------|
| [`town/town_map.puml`](town/town_map.puml) | All 20 town locations, grouped by zone |
| [`town/locations.md`](town/locations.md) | Detailed location descriptions (prose) |
| [`school/school_map.puml`](school/school_map.puml) | Lakeview High interior zones and rooms |

### Game Systems
| File | Description |
|------|-------------|
| [`systems/game_systems.puml`](systems/game_systems.puml) | All game modules and their dependencies |
| [`systems/daily_loop.puml`](systems/daily_loop.puml) | Activity diagram of a typical school day |
| [`systems/classroom.puml`](systems/classroom.puml) | Classroom mechanic state machine (actions, catch, consequences) |
| [`systems/stats.puml`](systems/stats.puml) | Stat system — core stats, knowledge, academic performance, items |
| [`systems/relationship_arc.puml`](systems/relationship_arc.puml) | Relationship arc template (6-stage state diagram) |
| [`modules.md`](modules.md) | High-level module descriptions (prose) |
| [`global.md`](global.md) | Global game design overview |

### Smartphone
| File | Description |
|------|-------------|
| [`smartphone/smartphone.puml`](smartphone/smartphone.puml) | Smartphone app mindmap |

### School
| File | Description |
|------|-------------|
| [`school/schedules.md`](school/schedules.md) | 3-year class timetables |
| [`school/clubs.md`](school/clubs.md) | Club list, benefits, events |
| [`school/events.md`](school/events.md) | Year-by-year event calendar |

### Characters
| File | Description |
|------|-------------|
| [`school/classmates/arcs/classmates_arcs.md`](school/classmates/arcs/classmates_arcs.md) | All 20 classmate relationship arcs |
| [`school/classmates/arcs/_template.md`](school/classmates/arcs/_template.md) | Arc authoring template |
| [`systems/relationship_arc.puml`](systems/relationship_arc.puml) | Arc progression as a state diagram |
