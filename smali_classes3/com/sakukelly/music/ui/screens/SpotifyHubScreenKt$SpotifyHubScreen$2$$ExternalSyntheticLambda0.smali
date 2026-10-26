.class public final synthetic Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebView;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lcom/sakukelly/music/ui/screens/SpotifyHubScreenKt$SpotifyHubScreen$2;->$r8$lambda$y43pDdJ58w0p4oIGBEe5_JTsmPQ(Landroid/webkit/WebView;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
