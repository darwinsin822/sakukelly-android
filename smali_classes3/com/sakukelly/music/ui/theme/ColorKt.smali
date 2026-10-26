.class public final Lcom/sakukelly/music/ui/theme/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0001\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0011\u0010\u0006\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\"\u0011\u0010\u0008\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\"\u0011\u0010\n\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0003\"\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "nocheTheme",
        "Lcom/sakukelly/music/ui/theme/SakuTheme;",
        "getNocheTheme",
        "()Lcom/sakukelly/music/ui/theme/SakuTheme;",
        "sunsetTheme",
        "getSunsetTheme",
        "forestTheme",
        "getForestTheme",
        "monoTheme",
        "getMonoTheme",
        "candyTheme",
        "getCandyTheme",
        "ALL_THEMES",
        "",
        "getALL_THEMES",
        "()Ljava/util/List;",
        "toColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ALL_THEMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sakukelly/music/ui/theme/SakuTheme;",
            ">;"
        }
    .end annotation
.end field

.field private static final candyTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

.field private static final forestTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

.field private static final monoTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

.field private static final nocheTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

.field private static final sunsetTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    .line 17
    new-instance v15, Lcom/sakukelly/music/ui/theme/SakuTheme;

    const-wide v0, 0xff0d1233L

    .line 19
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    const-wide v0, 0xff1a2050L

    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v4

    const-wide v0, 0xff7c5cffL

    .line 21
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v6

    const-wide v0, 0xff33e0ffL

    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v8

    const-wide v0, 0xfff2f3fbL

    .line 23
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v10

    const-wide v0, 0xffa9adcfL

    .line 24
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v12

    const/4 v14, 0x0

    .line 17
    const-string v1, "noche"

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/sakukelly/music/ui/theme/SakuTheme;-><init>(Ljava/lang/String;JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v15, Lcom/sakukelly/music/ui/theme/ColorKt;->nocheTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    .line 27
    new-instance v0, Lcom/sakukelly/music/ui/theme/SakuTheme;

    const-wide v1, 0xff2b0f2eL

    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v18

    const-wide v1, 0xff4a1942L

    .line 30
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v20

    const-wide v1, 0xffff6b6bL

    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v22

    const-wide v1, 0xffffb347L

    .line 32
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v24

    const-wide v1, 0xfffff3f3L

    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v26

    const-wide v1, 0xffd6afc9L

    .line 34
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v28

    const/16 v30, 0x0

    .line 27
    const-string v17, "sunset"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v30}, Lcom/sakukelly/music/ui/theme/SakuTheme;-><init>(Ljava/lang/String;JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->sunsetTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    .line 37
    new-instance v1, Lcom/sakukelly/music/ui/theme/SakuTheme;

    const-wide v2, 0xff0b1f19L

    .line 39
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v33

    const-wide v2, 0xff123329L

    .line 40
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v35

    const-wide v2, 0xff3ddc97L

    .line 41
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v37

    const-wide v2, 0xff9be15dL

    .line 42
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v39

    const-wide v2, 0xffeffff8L

    .line 43
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v41

    const-wide v2, 0xff9fc8b8L

    .line 44
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v43

    const/16 v45, 0x0

    .line 37
    const-string v32, "forest"

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v45}, Lcom/sakukelly/music/ui/theme/SakuTheme;-><init>(Ljava/lang/String;JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/sakukelly/music/ui/theme/ColorKt;->forestTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    .line 47
    new-instance v2, Lcom/sakukelly/music/ui/theme/SakuTheme;

    const-wide v3, 0xff0e0e10L

    .line 49
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v18

    const-wide v3, 0xff1c1c1fL

    .line 50
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v20

    const-wide v3, 0xffe5e5e5L

    .line 51
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v22

    const-wide v3, 0xff8a8a8aL

    .line 52
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v24

    const-wide v3, 0xfff5f5f5L

    .line 53
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v26

    const-wide v3, 0xffa0a0a0L

    .line 54
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v28

    .line 47
    const-string v17, "mono"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v30}, Lcom/sakukelly/music/ui/theme/SakuTheme;-><init>(Ljava/lang/String;JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/sakukelly/music/ui/theme/ColorKt;->monoTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    .line 57
    new-instance v3, Lcom/sakukelly/music/ui/theme/SakuTheme;

    const-wide v4, 0xff1a0b2eL

    .line 59
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v33

    const-wide v4, 0xff2e1065L

    .line 60
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v35

    const-wide v4, 0xffff4fd8L

    .line 61
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v37

    const-wide v4, 0xff4facfeL

    .line 62
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v39

    const-wide v4, 0xfffff1fdL

    .line 63
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v41

    const-wide v4, 0xffc4acd9L

    .line 64
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v43

    .line 57
    const-string v32, "candy"

    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v45}, Lcom/sakukelly/music/ui/theme/SakuTheme;-><init>(Ljava/lang/String;JJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lcom/sakukelly/music/ui/theme/ColorKt;->candyTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    const/4 v4, 0x5

    .line 67
    new-array v4, v4, [Lcom/sakukelly/music/ui/theme/SakuTheme;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->ALL_THEMES:Ljava/util/List;

    return-void
.end method

.method public static final getALL_THEMES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/ui/theme/SakuTheme;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->ALL_THEMES:Ljava/util/List;

    return-object v0
.end method

.method public static final getCandyTheme()Lcom/sakukelly/music/ui/theme/SakuTheme;
    .locals 1

    .line 57
    sget-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->candyTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    return-object v0
.end method

.method public static final getForestTheme()Lcom/sakukelly/music/ui/theme/SakuTheme;
    .locals 1

    .line 37
    sget-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->forestTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    return-object v0
.end method

.method public static final getMonoTheme()Lcom/sakukelly/music/ui/theme/SakuTheme;
    .locals 1

    .line 47
    sget-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->monoTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    return-object v0
.end method

.method public static final getNocheTheme()Lcom/sakukelly/music/ui/theme/SakuTheme;
    .locals 1

    .line 17
    sget-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->nocheTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    return-object v0
.end method

.method public static final getSunsetTheme()Lcom/sakukelly/music/ui/theme/SakuTheme;
    .locals 1

    .line 27
    sget-object v0, Lcom/sakukelly/music/ui/theme/ColorKt;->sunsetTheme:Lcom/sakukelly/music/ui/theme/SakuTheme;

    return-object v0
.end method

.method public static final toColorScheme(Lcom/sakukelly/music/ui/theme/SakuTheme;)Landroidx/compose/material3/ColorScheme;
    .locals 77

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getAccent-0d7_KjU()J

    move-result-wide v2

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getAccent2-0d7_KjU()J

    move-result-wide v12

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getDeep-0d7_KjU()J

    move-result-wide v28

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getMid-0d7_KjU()J

    move-result-wide v32

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getDeep-0d7_KjU()J

    move-result-wide v4

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getDeep-0d7_KjU()J

    move-result-wide v14

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getText-0d7_KjU()J

    move-result-wide v30

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getText-0d7_KjU()J

    move-result-wide v34

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getMid-0d7_KjU()J

    move-result-wide v36

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/theme/SakuTheme;->getDim-0d7_KjU()J

    move-result-wide v38

    const/16 v75, 0xf

    const/16 v76, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const v74, -0x7e064

    .line 70
    invoke-static/range {v2 .. v76}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-C-Xl9yA$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJIILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    return-object v0
.end method
