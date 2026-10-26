.class public final synthetic Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;IIFJJII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$4:F

    iput-wide p6, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$5:J

    iput-wide p8, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$6:J

    iput p10, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$7:I

    iput p11, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$8:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 0
    iget-boolean v0, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$4:F

    iget-wide v5, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$5:J

    iget-wide v7, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$6:J

    iget v9, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$7:I

    iget v10, p0, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt$$ExternalSyntheticLambda1;->f$8:I

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static/range {v0 .. v12}, Lcom/sakukelly/music/ui/components/SpectrumVisualizerKt;->$r8$lambda$rZfhBTv2z5SBh5-sLwfL-9UB8BY(ZLandroidx/compose/ui/Modifier;IIFJJIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
