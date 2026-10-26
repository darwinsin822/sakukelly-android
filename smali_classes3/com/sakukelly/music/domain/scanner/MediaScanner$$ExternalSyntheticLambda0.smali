.class public final synthetic Lcom/sakukelly/music/domain/scanner/MediaScanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/domain/scanner/MediaScanner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->$r8$lambda$sRqo-rL1nz---4x2A2NzaXKBVuM(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
