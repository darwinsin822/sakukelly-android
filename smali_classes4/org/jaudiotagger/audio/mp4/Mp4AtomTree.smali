.class public Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;
.super Ljava/lang/Object;
.source "Mp4AtomTree.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

.field private freeNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private moovBuffer:Ljava/nio/ByteBuffer;

.field private moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

.field private moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private stcoNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private stcos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;"
        }
    .end annotation
.end field

.field private tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private trakNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "org.jaudiotagger.audio.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/nio/channels/SeekableByteChannel;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/nio/channels/SeekableByteChannel;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/nio/channels/SeekableByteChannel;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/nio/channels/SeekableByteChannel;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method


# virtual methods
.method public buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 305
    invoke-virtual {p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 311
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v2, v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 314
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 318
    :try_start_0
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/NullBoxIdException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 324
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    throw p2

    .line 334
    :cond_0
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 335
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x8

    if-ge v3, v4, :cond_c

    .line 337
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 341
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 342
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Atom "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,ends @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 343
    new-instance v4, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v4, v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p2, v4}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 346
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 351
    :cond_1
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 355
    :cond_2
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 359
    :cond_3
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 361
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 363
    :cond_4
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TAGS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 365
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto/16 :goto_4

    .line 367
    :cond_5
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 369
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v6, v3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 372
    :cond_6
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 374
    invoke-virtual {p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v5, :cond_9

    .line 377
    invoke-virtual {v5}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v5, :cond_9

    .line 380
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 382
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    goto :goto_4

    .line 387
    :cond_7
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 390
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 392
    :cond_8
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 395
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_9
    :goto_4
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 400
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 401
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 402
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 403
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 404
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 405
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 407
    :cond_a
    invoke-virtual {p0, p1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V

    .line 410
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 414
    :cond_c
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public buildTree(Ljava/nio/channels/SeekableByteChannel;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 114
    :try_start_0
    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 117
    new-instance v2, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>()V

    iput-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 118
    new-instance v2, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v2, v3}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;-><init>(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    iput-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    const/16 v2, 0x8

    .line 121
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 124
    :goto_0
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_11

    .line 126
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 127
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 128
    invoke-interface {p1, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 129
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 133
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Lorg/jaudiotagger/audio/exceptions/NullBoxIdException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v4, v10, v11}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 154
    new-instance v7, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v7, v4}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v11}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 161
    iget-object v10, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v10, :cond_0

    move v10, v6

    goto :goto_1

    :cond_0
    move v10, v5

    :goto_1
    iget-object v11, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v11, :cond_1

    move v5, v6

    :cond_1
    and-int/2addr v5, v10

    if-eqz v5, :cond_2

    .line 163
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->ADDITIONAL_MOOV_ATOM_AT_END_OF_MP4:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 166
    :cond_2
    iput-object v7, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 167
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 169
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v10

    .line 170
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 171
    invoke-interface {p1, v5}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 174
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v12

    if-lt v5, v12, :cond_3

    .line 179
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 180
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v5, v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V

    .line 181
    invoke-interface {p1, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_2

    .line 176
    :cond_3
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ATOM_LENGTH_LARGER_THAN_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_4
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDAT:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    iput-object v7, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 198
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_6
    :goto_2
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v5, v7}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 203
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    if-ne v5, v6, :cond_d

    .line 205
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 206
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 207
    invoke-interface {p1, v4}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x0

    if-eq v5, v2, :cond_9

    .line 235
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    .line 242
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_7
    return-object v6

    .line 237
    :cond_8
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_9
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v7, v4, v8

    if-gez v7, :cond_c

    .line 235
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    .line 242
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_a
    return-object v6

    .line 237
    :cond_b
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_c
    :try_start_4
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v6

    add-long/2addr v6, v4

    const-wide/16 v4, 0x10

    sub-long/2addr v6, v4

    invoke-interface {p1, v6, v7}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto/16 :goto_0

    .line 222
    :cond_d
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v5

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v4

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-interface {p1, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 138
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v3, :cond_e

    move v3, v6

    goto :goto_3

    :cond_e
    move v3, v5

    :goto_3
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v4, :cond_f

    move v5, v6

    :cond_f
    and-int/2addr v3, v5

    if-eqz v3, :cond_10

    .line 140
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;-><init>(JJ)V

    .line 141
    new-instance v3, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {v3, v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 142
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v4, v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 143
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->NULL_PADDING_FOUND_AT_END_OF_MP4:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;->getFilePos()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    .line 149
    :cond_10
    throw v2

    .line 225
    :cond_11
    :goto_4
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-eqz v0, :cond_12

    .line 227
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->EXTRA_DATA_AT_END_OF_MP4:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 229
    :cond_12
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v1, :cond_14

    if-eqz p2, :cond_13

    .line 242
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_13
    return-object v0

    .line 237
    :cond_14
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    .line 235
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    if-eqz v1, :cond_16

    if-eqz p2, :cond_15

    .line 242
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 244
    :cond_15
    throw v0

    .line 237
    :cond_16
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 466
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object p1
.end method

.method public getDataTree()Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-object v0
.end method

.method public getFreeNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    return-object v0
.end method

.method public getHdlrWithinMdiaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getMoovBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 556
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMoovHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    return-object v0
.end method

.method public getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getStcoNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNodes:Ljava/util/List;

    return-object v0
.end method

.method public getStcos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcos:Ljava/util/List;

    return-object v0
.end method

.method public getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getTrakNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    return-object v0
.end method

.method public getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public printAtomTree()V
    .locals 9

    .line 253
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->preorderEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 255
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 258
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 262
    const-string v4, ""

    move v5, v3

    :goto_1
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    :cond_1
    instance-of v1, v2, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;

    const-string v5, " ,ends @ "

    const-string v6, " of size:"

    if-eqz v1, :cond_3

    .line 269
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    const-string v7, "Null pad  @ "

    if-ne v1, v3, :cond_2

    .line 271
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 64bitDataSize ,ends @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_3
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    const-string v7, " @ "

    const-string v8, "Atom "

    if-ne v1, v3, :cond_4

    .line 282
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 64BitDataSize ,ends @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
