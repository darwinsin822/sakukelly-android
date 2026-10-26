.class public final Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpectrumVisualizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpectrumVisualizer.kt\ncom/sakukelly/music/ui/components/SpectrumVisualizerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,142:1\n149#2:143\n159#2:151\n159#2:152\n149#2:153\n1225#3,6:144\n81#4:150\n*S KotlinDebug\n*F\n+ 1 SpectrumVisualizer.kt\ncom/sakukelly/music/ui/components/SpectrumVisualizerKt\n*L\n28#1:143\n82#1:151\n106#1:152\n111#1:153\n43#1:144,6\n33#1:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\u001aS\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010\u00b2\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002"
    }
    d2 = {
        "SpectrumVisualizer",
        "",
        "isPlaying",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "mode",
        "",
        "barCount",
        "height",
        "Landroidx/compose/ui/unit/Dp;",
        "primaryColor",
        "Landroidx/compose/ui/graphics/Color;",
        "secondaryColor",
        "SpectrumVisualizer-geL5tGQ",
        "(ZLandroidx/compose/ui/Modifier;IIFJJLandroidx/compose/runtime/Composer;II)V",
        "app_release",
        "phase",
        ""
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$YoVJdK3cA79hIoDQWOJmigkG8IA(IZLandroidx/compose/ui/graphics/Brush;JI[FLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;->SpectrumVisualizer_geL5tGQ$lambda$2(IZLandroidx/compose/ui/graphics/Brush;JI[FLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rZfhBTv2z5SBh5-sLwfL-9UB8BY(ZLandroidx/compose/ui/Modifier;IIFJJIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p12}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;->SpectrumVisualizer_geL5tGQ$lambda$3(ZLandroidx/compose/ui/Modifier;IIFJJIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SpectrumVisualizer-geL5tGQ(ZLandroidx/compose/ui/Modifier;IIFJJLandroidx/compose/runtime/Composer;II)V
    .locals 23

    move/from16 v10, p10

    const v0, 0x47e8eb10    # 119254.125f

    move-object/from16 v1, p9

    .line 31
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v10, 0x6

    move v3, v1

    move/from16 v1, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v10, 0xe

    if-nez v1, :cond_2

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move/from16 v1, p0

    move v3, v10

    :goto_1
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v10, 0x70

    if-nez v5, :cond_5

    move-object/from16 v5, p1

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v5, p1

    :goto_4
    and-int/lit8 v6, p11, 0x4

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v7, v10, 0x380

    if-nez v7, :cond_8

    move/from16 v7, p2

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_5

    :cond_7
    const/16 v8, 0x80

    :goto_5
    or-int/2addr v3, v8

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v7, p2

    :goto_7
    and-int/lit8 v8, p11, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_9

    :cond_9
    and-int/lit16 v9, v10, 0x1c00

    if-nez v9, :cond_b

    move/from16 v9, p3

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_8

    :cond_a
    const/16 v11, 0x400

    :goto_8
    or-int/2addr v3, v11

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v9, p3

    :goto_a
    and-int/lit8 v11, p11, 0x10

    if-eqz v11, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_c

    :cond_c
    const v12, 0xe000

    and-int/2addr v12, v10

    if-nez v12, :cond_e

    move/from16 v12, p4

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_b

    :cond_d
    const/16 v13, 0x2000

    :goto_b
    or-int/2addr v3, v13

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v12, p4

    :goto_d
    const/high16 v13, 0x70000

    and-int/2addr v13, v10

    if-nez v13, :cond_11

    and-int/lit8 v13, p11, 0x20

    if-nez v13, :cond_f

    move-wide/from16 v13, p5

    invoke-interface {v0, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_e

    :cond_f
    move-wide/from16 v13, p5

    :cond_10
    const/high16 v15, 0x10000

    :goto_e
    or-int/2addr v3, v15

    goto :goto_f

    :cond_11
    move-wide/from16 v13, p5

    :goto_f
    const/high16 v15, 0x380000

    and-int/2addr v15, v10

    if-nez v15, :cond_14

    and-int/lit8 v15, p11, 0x40

    if-nez v15, :cond_12

    move v15, v3

    move-wide/from16 v2, p7

    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_10

    :cond_12
    move v15, v3

    move-wide/from16 v2, p7

    :cond_13
    const/high16 v16, 0x80000

    :goto_10
    or-int v15, v15, v16

    goto :goto_11

    :cond_14
    move v15, v3

    move-wide/from16 v2, p7

    :goto_11
    const v16, 0x2db6db

    and-int v15, v15, v16

    const v1, 0x92492

    if-ne v15, v1, :cond_16

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_13

    .line 141
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :goto_12
    move v4, v9

    move-wide v8, v2

    move-object v2, v5

    move v3, v7

    move v5, v12

    move-wide v6, v13

    goto/16 :goto_17

    .line 31
    :cond_16
    :goto_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v10, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_18

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_14

    .line 30
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_15

    :cond_18
    :goto_14
    if-eqz v4, :cond_19

    .line 25
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v5, v1

    :cond_19
    if-eqz v6, :cond_1a

    move v7, v15

    :cond_1a
    if-eqz v8, :cond_1b

    const/16 v1, 0x24

    move v9, v1

    :cond_1b
    if-eqz v11, :cond_1c

    const/16 v1, 0x30

    int-to-float v1, v1

    .line 143
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move v12, v1

    :cond_1c
    and-int/lit8 v1, p11, 0x20

    if-eqz v1, :cond_1d

    .line 29
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v13

    :cond_1d
    and-int/lit8 v1, p11, 0x40

    if-eqz v1, :cond_1e

    .line 30
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/ColorScheme;->getTertiary-0d7_KjU()J

    move-result-wide v1

    move-wide v2, v1

    :cond_1e
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 32
    const-string v1, "spectrum_anim"

    const/4 v4, 0x6

    invoke-static {v1, v0, v4, v15}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v1

    const/16 v4, 0x708

    .line 37
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v11, 0x2

    invoke-static {v4, v15, v6, v11, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 38
    sget-object v6, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    const/4 v11, 0x4

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 p1, v4

    move-object/from16 p2, v6

    move-wide/from16 p3, v17

    move/from16 p5, v11

    move-object/from16 p6, v16

    .line 36
    invoke-static/range {p1 .. p6}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    .line 40
    sget v6, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    or-int/lit16 v6, v6, 0x61b0

    sget v11, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    shl-int/lit8 v11, v11, 0x9

    or-int/2addr v6, v11

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    .line 33
    const-string v18, "phase"

    move-object/from16 p1, v1

    move/from16 p2, v16

    move/from16 p3, v17

    move-object/from16 p4, v4

    move-object/from16 p5, v18

    move-object/from16 p6, v0

    move/from16 p7, v6

    move/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    const v4, -0x3b225e90

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 144
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 145
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_20

    .line 43
    new-array v4, v9, [F

    move v6, v15

    :goto_16
    if-ge v6, v9, :cond_1f

    sget-object v11, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v11}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v11

    const v16, 0x3f333333    # 0.7f

    mul-float v11, v11, v16

    const v16, 0x3e99999a    # 0.3f

    add-float v11, v11, v16

    aput v11, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 147
    :cond_1f
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 43
    :cond_20
    check-cast v4, [F

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 45
    sget-object v6, Landroidx/compose/ui/graphics/Brush;->Companion:Landroidx/compose/ui/graphics/Brush$Companion;

    const/4 v11, 0x3

    .line 47
    new-array v11, v11, [Landroidx/compose/ui/graphics/Color;

    const/16 v16, 0xe

    const/16 v17, 0x0

    const v18, 0x3f666666    # 0.9f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 p1, v2

    move/from16 p3, v18

    move/from16 p4, v19

    move/from16 p5, v20

    move/from16 p6, v21

    move/from16 p7, v16

    move-object/from16 p8, v17

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v16

    aput-object v16, v11, v15

    const/16 v16, 0xe

    const/16 v17, 0x0

    const v18, 0x3f733333    # 0.95f

    move-wide/from16 p1, v13

    move/from16 p3, v18

    move/from16 p7, v16

    move-object/from16 p8, v17

    .line 48
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v16

    const/4 v15, 0x1

    aput-object v16, v11, v15

    const/16 v16, 0xe

    const/16 v18, 0x0

    const v19, 0x3eb33333    # 0.35f

    const/16 v22, 0x0

    move/from16 p3, v19

    move/from16 p4, v20

    move/from16 p5, v21

    move/from16 p6, v22

    move/from16 p7, v16

    move-object/from16 p8, v18

    .line 49
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v16

    const/16 v18, 0x2

    aput-object v16, v11, v18

    .line 46
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/16 v16, 0xe

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 p1, v6

    move-object/from16 p2, v11

    move/from16 p3, v19

    move/from16 p5, v21

    move/from16 p6, v16

    move-object/from16 p7, v18

    .line 45
    invoke-static/range {p1 .. p7}, Landroidx/compose/ui/graphics/Brush$Companion;->verticalGradient-8A-3gB4$default(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFIILjava/lang/Object;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v6

    const/4 v11, 0x0

    .line 55
    invoke-static {v5, v11, v15, v8}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 56
    invoke-static {v8, v12}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 53
    new-instance v11, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;

    move-object/from16 p1, v11

    move/from16 p2, v7

    move/from16 p3, p0

    move-object/from16 p4, v6

    move-wide/from16 p5, v13

    move/from16 p7, v9

    move-object/from16 p8, v4

    move-object/from16 p9, v1

    invoke-direct/range {p1 .. p9}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;-><init>(IZLandroidx/compose/ui/graphics/Brush;JI[FLandroidx/compose/runtime/State;)V

    const/4 v1, 0x0

    invoke-static {v8, v11, v0, v1}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto/16 :goto_12

    .line 141
    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_21

    new-instance v13, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;

    move-object v0, v13

    move/from16 v1, p0

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;-><init>(ZLandroidx/compose/ui/Modifier;IIFJJII)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method private static final SpectrumVisualizer_geL5tGQ$lambda$0(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final SpectrumVisualizer_geL5tGQ$lambda$2(IZLandroidx/compose/ui/graphics/Brush;JI[FLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 29

    move/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v15, p8

    const-string v3, "$gradient"

    move-object/from16 v14, p2

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$randomFactors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$phase$delegate"

    move-object/from16 v4, p7

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$Canvas"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface/range {p8 .. p8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    .line 59
    invoke-interface/range {p8 .. p8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v17

    .line 60
    invoke-static/range {p7 .. p7}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;->SpectrumVisualizer_geL5tGQ$lambda$0(Landroidx/compose/runtime/State;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v13, v4

    const v18, 0x40490fdb    # (float)Math.PI

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const/high16 v19, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    const/4 v12, 0x2

    if-eq v0, v12, :cond_1

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 153
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 111
    invoke-interface {v15, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v0

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    int-to-float v11, v1

    div-float v9, v3, v11

    move v10, v5

    :goto_0
    if-ge v10, v1, :cond_6

    int-to-float v3, v10

    div-float v4, v3, v11

    mul-float v5, v13, v19

    mul-float v4, v4, v18

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x40600000    # 3.5f

    mul-float/2addr v6, v13

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v4, v7

    sub-float/2addr v6, v4

    float-to-double v6, v6

    .line 118
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    if-eqz p1, :cond_0

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    .line 121
    aget v4, v2, v10

    mul-float/2addr v5, v4

    const v4, 0x3da3d70a    # 0.08f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 122
    invoke-static {v5, v4, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    goto :goto_1

    :cond_0
    const v4, 0x3d75c28f    # 0.06f

    :goto_1
    mul-float v4, v4, v17

    add-float v5, v9, v0

    mul-float/2addr v3, v5

    sub-float v5, v17, v4

    .line 133
    invoke-static {v3, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .line 134
    invoke-static {v9, v4}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    int-to-float v3, v12

    div-float v3, v9, v3

    .line 135
    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v20

    const/16 v16, 0xf0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move/from16 v27, v9

    move/from16 v28, v10

    move-wide/from16 v9, v20

    move/from16 v20, v11

    move/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v21, v13

    move-object/from16 v13, v25

    move/from16 v14, v26

    move/from16 v15, v16

    move-object/from16 v16, v22

    .line 131
    invoke-static/range {v3 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    add-int/lit8 v10, v28, 0x1

    move-object/from16 v14, p2

    move-object/from16 v15, p8

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v9, v27

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_1
    move/from16 v21, v13

    div-float v11, v3, v19

    div-float v12, v17, v19

    if-eqz p1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v13, v21, v0

    float-to-double v0, v13

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    goto :goto_2

    :cond_2
    const v0, 0x3dcccccd    # 0.1f

    :goto_2
    const v1, 0x3ee66666    # 0.45f

    mul-float v17, v17, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    mul-float v13, v17, v4

    .line 93
    sget-object v14, Landroidx/compose/ui/graphics/Brush;->Companion:Landroidx/compose/ui/graphics/Brush$Companion;

    const/4 v1, 0x2

    .line 94
    new-array v1, v1, [Landroidx/compose/ui/graphics/Color;

    const v2, 0x3f333333    # 0.7f

    mul-float v17, v0, v2

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v15, p3

    invoke-static/range {v15 .. v22}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    aput-object v0, v1, v5

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 95
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v16

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v2, v13, v0

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v19, 0x0

    move/from16 v18, v2

    .line 93
    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Brush$Companion;->radialGradient-P_Vx-Ks$default(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;JFIILjava/lang/Object;)Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    .line 98
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p8

    .line 92
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-V9BoPsw$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 104
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    .line 106
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    double-to-float v1, v1

    .line 152
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move-object/from16 v2, p8

    .line 106
    invoke-interface {v2, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v15

    const/16 v20, 0x1e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v21}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/16 v10, 0x68

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p8

    move-wide/from16 v1, p3

    move v3, v13

    .line 102
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_5

    :cond_3
    move/from16 v21, v13

    move-object v2, v15

    .line 65
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    div-float v0, v17, v19

    const/16 v6, 0x3c

    int-to-float v7, v6

    div-float/2addr v3, v7

    const/4 v8, 0x0

    .line 70
    invoke-interface {v1, v8, v0}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    :goto_3
    int-to-float v8, v5

    mul-float v9, v8, v3

    div-float/2addr v8, v7

    if-eqz p1, :cond_4

    mul-float v10, v17, v4

    goto :goto_4

    :cond_4
    const v10, 0x3d4ccccd    # 0.05f

    mul-float v10, v10, v17

    :goto_4
    mul-float v13, v21, v19

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v11, v8

    add-float/2addr v13, v11

    float-to-double v11, v13

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v10

    mul-float v8, v8, v18

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v8, v12

    mul-float/2addr v11, v8

    add-float/2addr v11, v0

    .line 76
    invoke-interface {v1, v9, v11}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    if-eq v5, v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 82
    :cond_5
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const-wide/high16 v3, 0x400c000000000000L    # 3.5

    double-to-float v3, v3

    .line 151
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 82
    invoke-interface {v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v9

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/16 v7, 0x34

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p8

    move-object/from16 v2, p2

    .line 79
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 140
    :cond_6
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final SpectrumVisualizer_geL5tGQ$lambda$3(ZLandroidx/compose/ui/Modifier;IIFJJIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p11

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;->SpectrumVisualizer-geL5tGQ(ZLandroidx/compose/ui/Modifier;IIFJJLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
