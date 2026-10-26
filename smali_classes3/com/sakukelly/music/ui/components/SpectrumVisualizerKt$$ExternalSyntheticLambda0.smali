.class public final synthetic Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:[F

.field public final synthetic f$6:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(IZLandroidx/compose/ui/graphics/Brush;JI[FLandroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$0:I

    iput-boolean p2, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/graphics/Brush;

    iput-wide p4, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$3:J

    iput p6, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$4:I

    iput-object p7, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$5:[F

    iput-object p8, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget v0, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$0:I

    iget-boolean v1, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/graphics/Brush;

    iget-wide v3, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$3:J

    iget v5, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$4:I

    iget-object v6, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$5:[F

    iget-object v7, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/State;

    move-object v8, p1

    check-cast v8, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-static/range {v0 .. v8}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;->$r8$lambda$YoVJdK3cA79hIoDQWOJmigkG8IA(IZLandroidx/compose/ui/graphics/Brush;JI[FLandroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
